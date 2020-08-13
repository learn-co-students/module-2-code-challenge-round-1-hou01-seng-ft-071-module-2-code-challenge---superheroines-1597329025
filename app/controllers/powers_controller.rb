class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  # def new
  # end

  # def create
  # end

  def show
    find_power
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def find_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name,:description)
  end
end
