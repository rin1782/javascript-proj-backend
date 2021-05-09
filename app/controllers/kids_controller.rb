class KidsController < ApplicationController
    
    def index
        render json: Kid.all, include: [chores: {only: [:name]}], except: [:created_at, :updated_at]
    end

    # def show
    #     kid = Kid.find_by(id: params[:id])
    #     render json: kid
    # end

    def create
        kid = Kid.new(kid_params)
        if kid.save
          render json: kid, include: [chores: {only: [:name]}], except: [:created_at, :updated_at]
        else
          render json: kid.errors, status: :unprocessable_entity
        end
    end
    
     
    def destroy
        kid = Kid.find_by(id: params[:id])
        kid.destroy
        render json: {message: "deleted"}
    end
    
    private
    
    def kid_params
        params.require(:kid).permit(:name)
    end
end
