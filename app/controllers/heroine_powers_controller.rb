class HeroinePowersController < ApplicationController
    def index
      @heroine_powers = HeroinePower.all
    end
    def show
      @heroine_power=HeroinePower.find(params[:id])
    end
    def new
        @heroine_power=HeroinePower.new
    end
    def create
        @heroine_power=HeroinePower.create(heroine_id:params[:heroine_power][:heroine_id],power_id:params[:heroine_power][:power_id],strength:params[:heroine_power][:strength])
        redirect_to heroine_power_path(@heroine_power)
    end

end