class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @project = Apartment.create(apartment_params)
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
      @apartment = Apartment.find(params[:id])
      @apartment.update(apartment_params)
      @apartment.save
  end

  def destroy
      @apartment = Apartment.find(params[:id])
      @apartment.destroy
  end

private

  def apartment_params
    params.require(:apartment).permit(:name, :sf, :baths, :rooms, :description, :price, :building_id)
  end
end
