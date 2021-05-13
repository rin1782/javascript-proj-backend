class ChoresController < ApplicationController
    def index 
        chores = Chore.all 
       
        render json: chores
    end

    def show 
        chore = Chore.find(params[:id])
        render json: chore.to_json(except: [:created_at, :updated_at], include: {kid: {only: [:name]}})
    end

    def create 
        chore = Chore.new(chore_params)
        if chore.save 
            render json: ChoreSerializer.new(chore, include: [:kid])
        else
            render json: {error: "Unable to save chore."}
        end
    end

    def destroy 
        chore = Chore.find(params[:id])
        chore.destroy 
        render json: {message: "Great Job! This chore is done!"}
    end

    private 

    def chore_params
        params.require(:chore).permit(:name, :kid_id)
    end
end