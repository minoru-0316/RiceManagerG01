class FarmersController < ApplicationController

  before_action :authenticate_user!

    
    def index
        @farmers = Farmer.all.order('created_at DESC')
    end

    
 def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)

    if @farmer.save
      redirect_to farmers_path
    else
      render 'new'
    end
  end

  def show 
    @farmer = Farmer.find(params[:id])
   end


   def edit
    @farmer = Farmer.find(params[:id])
   end

   def update
    @farmer = Farmer.find(params[:id])

    if @farmer.update(farmer_params)
      redirect_to farmers_path
   else
    render 'edit'
   end
  end

  
  def destroy
    @farmer = Farmer.find(params[:id])

    @farmer.destroy
    redirect_to farmers_path
  end

  private
  def farmer_params
    params.require(:farmer).permit(:farmer_name, :farmer_email, :farmer_tel, :farmer_area, :farmer_address, :farmer_map_latitude, :farmer_map_longitude, :farmer_map_code, :farmer_memorandum)
  end
end
