class HeroinesController < ApplicationController
  
  before_action :get_heroine, only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine_powers = HeroinePower.all.find_by(heroine_id: params[:id])
  end

  private

  def get_heroine
      @heroine = Heroine.find_by(id: params[:id])
  end

end
