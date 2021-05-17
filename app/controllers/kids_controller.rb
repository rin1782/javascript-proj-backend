class KidsController < ApplicationController
  
    def index
      kids = Kid.all
      render json: kids.to_json(include: [:chores])
    end
  
    def show 
      kid = Kid.find(params[:id])
      options = {
        include: [:chores]
      }
      render json: KidSerializer.new(kid, options)
    end
end