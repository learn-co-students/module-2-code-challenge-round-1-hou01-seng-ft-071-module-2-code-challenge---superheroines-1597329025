class HeroinePowersController < ApplicationController

    

    def  new 
      @heroine_powers = HeroinePower.all
      @heroines = Heroine.all
      @powers = Power.all 
    end 

   def create

     @heroine_powers = HeroinePower.new(heroine_power_params)
     if @heroine_powers.save
        
      
   end 
   

   private  
   def heroine_power_params
       params.require(:heroine_powers).permit(power_id, heroine_id)

   end 

end
