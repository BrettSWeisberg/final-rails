class BuildingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @buildings = Building.all

    render json: @buildings
  end

  def new
     @building = Building.new
     render json: @building
  end

  def create
      @building = Building.new(building_params)
      @building.save
      render json: @building
  end

  def show
    @building = Building.find(params[:id])
    render json: @building
  end

  def edit
      @building = Building.find(params[:id])
      render json: @building
  end

  def update
      @building = Building.find(params[:id])
      @building.update(building_params)
      @building.save
      render json: @building
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    render json: @building
  end

private

  def building_params
    params.require(:building).permit(:name, :units, :description, :address)
  end
end
