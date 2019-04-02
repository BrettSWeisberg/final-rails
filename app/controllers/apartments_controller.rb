class ApartmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  def new
    @apartment = Apartment.new
    render json: @apartment
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save
    render json: @apartment
  end

  def show
    @apartment = Apartment.find(params[:id])
    render json: @apartment
  end

  def edit
    @apartment = Apartment.find(params[:id])
    render json: @apartment
  end

  def update
      @apartment = Apartment.find(params[:id])
      @apartment.update(apartment_params)
      @apartment.save
      render json: @apartment
  end

  def destroy
      @apartment = Apartment.find(params[:id])
      @apartment.destroy
      render json: @apartment
  end

private

  def apartment_params
    params.require(:apartment).permit(:name, :sf, :baths, :rooms, :description, :price, :building_id)
  end
end
