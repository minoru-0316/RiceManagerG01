class Item < ApplicationRecord


    has_many :item_sales
    has_many :sales, through: :item_sales

end

