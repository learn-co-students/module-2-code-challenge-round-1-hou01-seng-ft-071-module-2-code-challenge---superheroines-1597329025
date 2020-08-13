class HeroinePowersController < ApplicationController
    def index
        @heroine_powers = HeroinePower.all 
    end

    def new
        @heroine_power = HeroinePower.new
    end

    def show
        @heroine_power = HeroinePower.find(params[:id])
    end

    

    # def create
    #     @heroine_power = HeroinePower.new(post_params)
    #     if @heroine_powers.valid?
    #         @heroine_power.save
    #         redirect_to heroine_power_path(@heroine_power)
    #     else
    #         flash[:message] = @heroine_power.errors
    #         redirect_to 'heroine_powers/new'
    #     end

        
    # end
    
    # private 
    # post_params
    #     params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    # end

end


