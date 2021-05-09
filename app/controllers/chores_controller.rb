class ChoresController < ApplicationController
    def index
        chore = Chore.all
        render json: Chore.arr_to_json
    end

    def show
        chore = Chore.find(params[:id])
        render json: chore.instance_to_json
    end

    def create
        chore = Chore.new(chore_params)
        kid = Kid.find_or_create_by(name: params[:kid])
        chore.kid_id = kid.id
        if chore.save
            render json: chore.instance_to_json
        else
            render json: chore.errors, status: :unprocessable_entity
        end
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