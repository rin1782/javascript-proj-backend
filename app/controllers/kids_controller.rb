class KidsController < ApplicationController

    def index
        kids = Kid.all
        
        render json: KidSerializer.new(kids, include: [:chores])
    end

end