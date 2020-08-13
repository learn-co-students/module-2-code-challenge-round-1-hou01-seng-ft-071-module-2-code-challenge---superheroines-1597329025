class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  def show
    @heroine = Heroine.all.find(params[:id])
  end
end
