class ChoresController < ApplicationController
    def index 
        chores = Chore.all
        render json: ChoreSerializer.new(chores)
    end

    def show 
        chore = Chore.find(params[:id])
        render json: chore.to_json(except: [:created_at, :updated_at], include: {kid: {only: [:name]}})
    end

    def create 
        chore = Chore.new(chore_params)
        if chore.save
            render json: ChoreSerializer.new(chore, include: [:category])
        else 
            render json: {errors: chore.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def destroy 
        chore = Chore.find(params[:id])
        if chore.destroy 
        render json: {message: "Great Job! This chore is done!"}
        end
    end

    private 

    def chore_params
        params.require(:chore).permit(:id, :title, :kid_id, :kid_name)
    end
end