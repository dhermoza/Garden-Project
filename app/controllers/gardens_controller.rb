class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    @plants = @garden.plants
  end

  def new
    @garden = Garden.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
