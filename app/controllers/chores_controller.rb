class ChoresController < ApplicationController
    def index 
        chores = Kid.find_by(id: params[:kid_id]).reviews
       
        render json: chores
    end

    # def show 
    #     chore = Chore.find(params[:id])
    #     render json: chore.to_json(except: [:created_at, :updated_at], include: {kid: {only: [:name]}})
    # end

    def create 
        kid = Kid.find_by(id: params[:kid_id])
        chore = kid.chores.build(chore_params)
        if chore.save
            render json: chore
        end
    end

    def destroy 
        chore = Chore.find(params[:id])
        chore.destroy 
        render json: {message: "Great Job! This chore is done!"}
    end

    private 

    def chore_params
        params.require(:chore).permit(:title)
    end
end