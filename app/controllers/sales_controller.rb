class SalesController < ApplicationController

  # before_action :authenticate_user!

  before_action :ensure_correct_user,{only:[:edit,:update,:destroy]}
  def ensure_correct_user
    @sale = Sale.find_by(id:params[:id])
        if @sale.user_id != current_user.id
        flash[:notice] = "権限がありません"
        redirect_to sales_path
        end
    end

    def index
      @sales = Sale.all.order('created_at DESC')
      @sales_unFinished = Sale.where(:is_done => false ).order('created_at DESC')
      @sales_finished = Sale.where(:is_done => true ).order('created_at DESC')

      @sale = @sales.each.find(params[:id])
      logger.debug("sale --------------")
      logger.debug(@sale)

      # @polish = Polish.find(@sale[:polish_id])
      # @item = Item.find(@sale[:item_id])
      # @cliant = Cliant.find(@sale[:cliant_id])
      # @user = User.find(@sale[:user_id])
    end
  
    def new
      @sale = Sale.new
      @polishes = Polish.all.order('created_at DESC')
      @items = Item.all
      @cliants = Cliant.all
      @users = User.all
    end
  
    def show
      @sale = Sale.find(params[:id])
      
      @polish = Polish.find(@sale[:polish_id])
      @item = Item.find(@sale[:item_id])
      @cliant = Cliant.find(@sale[:cliant_id])
      @user = User.find_by(id: @sale.user_id)
    end
  
    def create
      @sale = Sale.new(sale_params)
      @sale.user_id = current_user.id

      if @sale.save
        redirect_to sales_path
      else
        render 'new'
      end
    end
  

    def destroy
      @sale = Sale.find(params[:id])
      @sale.destroy
      redirect_to sales_path, notice:"削除しました"
    end
  
    def edit
      @sale = Sale.find(params[:id])
      @polishes = Polish.all
      @items = Item.all
      @cliants = Cliant.all
      @users = User.all
    end
  
    def update
      @sale = Sale.find(params[:id])

        if is_done(params[:sale])
        end

      if @sale.update(sale_params)
        redirect_to sales_path, notice: "更新しました"
      else
        render 'edit'
      end
    end  

    def is_done(sale)
      castAfter = ActiveRecord::Type::Boolean.new.cast(sale[:is_done])
      logger.debug(castAfter)
    end


  def update_is_done
      @sale = Sale.find(params[:id])

    if  @sale.update(params[:id])
    end

    @sale.update_is_done
        redirect_to sales_path
        flash[:notice] = "Jobの状態が更新されました！"
  end


    private
    def sale_params
      params.require(:sale).permit(:user_id, :job_type, :cliant_name, :cliant_id, :material_infomation, :item_name, :sale_item_count, :sale_item_amount, :polish_id, :item_id, :sale_memorandum, :start_time, :sale_job_title, { :polish_ids=> [] }, :is_done, :seller_name)
    end

  end
