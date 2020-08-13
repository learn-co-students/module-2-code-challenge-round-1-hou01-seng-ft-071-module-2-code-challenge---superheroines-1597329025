class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  def show
    @heroine=Heroine.find(params[:id])
    @heronie_power=HeroinePower.find_by(heroine_id:@heroine.id)
    @powers=Power.find(id:(@heronie_power.power_id))
  end

end
