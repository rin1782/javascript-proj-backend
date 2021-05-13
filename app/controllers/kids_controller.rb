class KidsController < ApplicationController
  def index
    kids = Kid.all
    render json: kids, include: [:chores]
  end
end
