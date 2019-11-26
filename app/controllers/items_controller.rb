class ItemsController < ApplicationController

  # before_action :authenticate_user!


  def index
    @items = Item.all
  end


  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end




  
  def show
    @item = Item.find(params[:id])
  end


  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to items_path
    else
      render 'edit'
    end
  end
  
  
  def destroy
    @item = Item.find(params[:id])

    @item.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:user_id, :item_name, :item_price_without_tax, :item_price_tax_included, :item_memorandum, :item_shipment_total, :item_total_sales_without_tax, :item_total_sales_tax_included, :polish_id)
  end

end
