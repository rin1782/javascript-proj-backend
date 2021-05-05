class KidsController < ApplicationController
    
    def index
        render json: Kid.all
    end

    def show
        kid = Kid.find_by(id: params[:id])
        render json: kid
    end

    def create
        @kid = Kid.create(kid_params)
        if @kid.save
          render json: @kid, status: :created, location: @kid
        else
          render json: @kid.errors, status: :unprocessable_entity
        end
    end
    
     
    def update
        if @kid.update(kid_params)
          render json: @kid
        else
          render json: @kid.errors, status: :unprocessable_entity
        end
    end
    
     
    def destroy
        @kid.destroy
    end
    
    private
    
    def kid_params
        params.require(:kid).permit(:name, :id)
    end
end
