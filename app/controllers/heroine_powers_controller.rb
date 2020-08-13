class HeroinePowersController < ApplicationController

    def new
      @heroine_power = HeroinePower.new
    end

    def create
      @heroine_power = HeroinePower.create(heroine_power_params)
      if @heroine_power.valid?
        @heroine_power = HeroinePower.create(heroine_power_params)
        redirect_to heroine_path(@heroine_power.heroine)
      else
        flash[:messages] = @heroine_power.errors.messages
        redirect_to new_heroine_power_path
      end
    end
  
    private
  
    def find_heroine_power
      @heroine_power = HeroinePower.find(params[:id])
    end
  
    def heroine_power_params
      params.require(:heroine_power).permit(:heroine_id,:power_id,:strength)
    end
  end
  