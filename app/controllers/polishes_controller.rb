class PolishesController < ApplicationController

  # before_action :authenticate_user!


  def index
    @polishes = Polish.all.order('created_at DESC')

    @stock = Stock.find_by(params[:id])
  end


  def new
    @polish = Polish.new
    @stocks = Stock.all
  end

  def create
    @polish = Polish.new(polish_params)

    if @polish.save
      redirect_to polishes_path
    else
      render 'new'
    end
  end

  def show
    @polish = Polish.find(params[:id])

    @stock = Stock.find_by(params[:id])
    # @stock = Stock.find_by([:stock_id])


  end


  def edit
    @polish = Polish.find(params[:id])

    @stocks = Stock.all
  end

  def update
    @polish = Polish.find(params[:id])

    if @polish.update(polish_params)
      redirect_to polishes_path
    else
      render 'edit'
    end
  end
  

  def destroy
    @polish = Polish.find(params[:id])

    @polish.destroy
    redirect_to polishes_path
  end
  
  private
  def polish_params
    params.require(:polish).permit(:user_id, :polish_amount_total, :farmer_id, :polish_1_farmer_id, :polish_1_farmer, :polish_2_farmer_id, :polish_2_farmer, :polish_3_farmer_id, :polish_3_farmer, :polish_4_farmer_id, :polish_4_farmer, :polish_5_farmer_id, :polish_5_farmer, :polish_memorandum, :polish_1_brand, :polish_2_brand, :polish_3_brand, :polish_4_brand, :polish_5_brand, :polish_1_amount, :polish_2_amount, :polish_3_amount, :polish_4_amount, :polish_5_amount, :polish_day, :stock_id, :stock_brand, { :stock_ids=> [] })
  end

end
