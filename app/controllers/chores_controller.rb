class ChoresController < ApplicationController

    def index
        render(json: Chore.all)
    end

    def create
        chore = Chore.new(chore_params)
        if chore.save
          render json: chore, include: [kid: {only: [:name]}], except: [:created_at, :updated_at]
        else
          render json: kid.errors, status: :unprocessable_entity
        end
    end

    def show
        chore = Chore.find_by(id: params[:id])
        render json: chore
    end
    
    def destroy
        chore = Chore.find_by(id: params[:id])
        chore.destroy
        render json: {message: "yay you're done!"}
    end
    
    private
    
    def chore_params
        params.require(:chore).permit(:name, :kid_id)
    end
end