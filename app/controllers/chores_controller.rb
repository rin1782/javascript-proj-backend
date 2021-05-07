class ChoresController < ApplicationController

    def index
        render(json: Chore.all)
    end

    def create
        @chore = Chore.new(chore_params)
    
        if @chore.save
          render json: @chore, status: :created, location: @chore
        else
          render json: @chore.errors, status: :unprocessable_entity
        end
    end
    
      
    def update
        if @chore.update(chore_params)
          render json: @chore
        else
          render json: @chore.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        chore = Chore.find_by(id: params[:id])
        chore.destroy
        render json: {message: "yay"}
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
    def set_chore
        @chore = Chore.find(params[:id])
    end
    
        # Only allow a list of trusted parameters through.
    def chore_params
        params.require(:chore).permit(:id, :name, :kid_id)
    end
end
