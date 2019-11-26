class CliantsController < ApplicationController

  # before_action :authenticate_user!

    
  def index
    @cliants = Cliant.all.order('created_at DESC')
  end

  def new
    @cliant = Cliant.new
  end

  def create
    @cliant = Cliant.new(cliant_params)

    if @cliant.save
      redirect_to cliants_path
    else
      render 'new'
    end
  end


  def show
    @cliant = Cliant.find(params[:id])
  end


  def edit
    @cliant = Cliant.find(params[:id])
  end

  def update
    @cliant = Cliant.find(params[:id])

   if @cliant.update(cliant_params)
    redirect_to cliants_path
  else
    render 'edit'
  end
end

def destroy
  @cliant = Cliant.find(params[:id])

  @cliant.destroy
  redirect_to cliants_path
end

  private
  def cliant_params
    params.require(:cliant).permit(:user_id, :cliant_name, :cliant_officer, :cliant_email, :cliant_tel, :cliant_address, :cliant_map_latitude, :cliant_map_longitude, :cliant_map_code, :cliant_type, :cliant_start_trading, :cliant_memorandum, :cliant_delivery_type, :cliant_postage, :cliant_postage_memorandum, :cliant_total_sales_without_tax, :cliant_total_sales_tax_included)
  end
  
end
