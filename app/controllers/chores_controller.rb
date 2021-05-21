class ChoresController < ApplicationController
    def index 
        chores = Chore.all
        render json: Chore.arr_to_json
    end

    def show 
        chore = Chore.new(post_params)
        kid = Kid.find_or_create_by(name: params[:kid])
        post.kid_id =  kid.id
        if chore.save
            render json: chore.instance_to_json
        else 
            render json: chore.errors, status: :unprocessable_entity
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
        params.require(:chore).permit(:title, :kid_id)
    end
end