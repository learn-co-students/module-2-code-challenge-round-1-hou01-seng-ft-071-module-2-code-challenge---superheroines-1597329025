class HeroinePowersController < ApplicationController
  before_action :get_hp, only: [:show, :create]

  def index
    @heroine_powers = HeroinePower.all
  end

  def new
    @heroine_power = HeroinePower.new
  end

  def create
    @heroine_power = HeroinePower.new(hp_params)
    @heroine = Heroine.find_by(id: params[:heroine_power][:heroine_id])

    if @heroine_power.valid?
      @heroine_power.save
      redirect_to heroine_path(@heroine)
    else
      flash[:messages] = @heroine_power.errors.messages
      redirect_to new_heroine_power_path
    end
    
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def get_hp
      @heroine_power = HeroinePower.find_by(id: params[:id])
  end

  def hp_params
    params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
  end

end
