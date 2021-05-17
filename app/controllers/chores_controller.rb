class ChoresController < ApplicationController
    def index 
        chores = Chore.all
        render json: chores.to_json(include: [:kid])
    end

    def show 
        chore = Chore.find_by(title: params[:title])
        render json: chore.to_json(
            :include => {
                :kid => {only: [:name]}
            })
    end

    def create 
        chore = Chore.new(chore_params)
        if chore.save
            render json: chore
        else 
            render json: {errors: chore.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def destroy 
        chore = Chore.find_by(id: params[:id])
        if chore.destroy 
        render json: {message: "Great Job! This chore is done!"}
        end
    end

    private 

    def chore_params
        params.require(:chore).permit(:title, :kid_name)
    end
end