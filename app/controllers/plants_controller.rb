class PlantsController < ApplicationController
  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def plant_params
    params.require(:plant).permit(:name, :description)
  end
end
