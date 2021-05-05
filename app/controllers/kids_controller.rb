class KidsController < ApplicationController
    
    def index
        render json: Kid.all
    end

    def show
        kid = Kid.find_by(id: params[:id])
        render json: kid
    end
end
