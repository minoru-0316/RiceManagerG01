class StocksController < ApplicationController

  before_action :authenticate_user!


    def index
        @stocks = Stock.all.order('created_at DESC')

        @farmer = Farmer.find_by(params[:id])


    end
    
    def new
        @stock = Stock.new
        @farmers = Farmer.all
      end
    
      def create
        @stock = Stock.new(stock_params)

        if @stock.save
          redirect_to stocks_path
        else
          render 'new'
        end
      end
    
      
      def show
        @stock = Stock.find(params[:id])
        @farmer = Farmer.find_by(params[:id])
      end



      def edit
        @stock = Stock.find(params[:id])
        @farmers = Farmer.all

      end

      def update
        @stock = Stock.find(params[:id]) 

        if @stock.update(stock_params)
          redirect_to stocks_path
        else
          render 'edit'
        end
      end


      def destroy
        @stock = Stock.find(params[:id])
    
        @stock.destroy
        redirect_to stocks_path
      end
      
      private
      def stock_params
        params.require(:stock).permit(:user_id, :polish_id, :stock_farmer_name, :farmer_id, :stock_brand, :stock_purchased_amount, :stock_used_amount, :stock_present_amount, :stock_price_without_tax, :stock_price_tax_included, :stock_quality, :stock_memorandum, :stock_arrivalday)
      end

end
