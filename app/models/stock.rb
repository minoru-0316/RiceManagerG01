class Stock < ApplicationRecord

    # 仕入れの合計
    def self.sumstock  
        sum(:stock_purchased_amount)
        #Stock.sumでも可
      end

    # 使用した在庫の合計
      def self.sumusedstock  
        sum(:stock_used_amount)
      end

    # 現在個数
    def self.sumpresentstock  
        self.sumstock-self.sumusedstock
      end


    belongs_to :farmer

    has_many :stock_polishes
    has_many :polishes, through: :stock_polishes    
    
end
