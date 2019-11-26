class Polish < ApplicationRecord

    has_many :stock_polishes
    has_many :stocks, through: :stock_polishes
    
    has_many :sales

end
