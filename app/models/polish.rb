class Polish < ApplicationRecord

    # # 使用した玄米の合計
    # def self.sumpolish  
    #     sum(:polish_amount_total)
    # end

    has_many :stock_polishes
    has_many :stocks, through: :stock_polishes
    
    has_many :sales

end
