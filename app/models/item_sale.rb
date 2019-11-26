class ItemSale < ApplicationRecord
    
    belongs_to :sale
    belongs_to :item

end
