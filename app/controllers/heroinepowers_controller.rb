class HeroinePowersController < ApplicationController
    def index
        @heroinepowers = HeroinePower.all
    end
    def show
        @heroinepower = HeroinePower.all.find(params[:id])
    end
    def new
        @heroinepower = HeroinePower.new
    end
    def create
        @heroinepower = HeroinePower.create(strength: params[:strength], heroine_id: params[:heroine_id], power_id: params[:power_id])
        redirect_to "/heroinepowers/#{@heroinepower.id}"
    end
end