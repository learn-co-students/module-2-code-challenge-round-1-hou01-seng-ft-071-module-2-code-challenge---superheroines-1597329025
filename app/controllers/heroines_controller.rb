class HeroinesController < ApplicationController

  before_action :current_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
    
  end

  private
  def current_heroine
    @heroine = Heroine.find(params[:id])
  end


end
