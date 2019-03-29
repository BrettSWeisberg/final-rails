class BuildingsController < ApplicationController
  def index
    @buildings = Building.all

    render json: @buildings
  end

  def new
     @building = Building.new
  end

  def create
      @building = Building.new(building_params)
      @building.save
  end

  def show
    @building = Building.find(params[:id])
  end

  def edit
      @building = Building.find(params[:id])
  end

  def update
      @building = Building.find(params[:id])
      @building.update(building_params)
      @building.save
  end

private

  def building_params
    params.require(:building).permit(:name, :units, :description, :address)
  end
end
