class Sale < ApplicationRecord

    belongs_to :polilsh,optional: true
    belongs_to :cliant,optional: true

    has_many :item_sales
    has_many :items, through: :item_sales
    

    validates :is_done, inclusion:{in: [true, false]}
    with_options presence: true do
        validates :seller_name
        validates :job_type
        validates :cliant_id
        validates :cliant_name
        validates :item_id
        validates :item_name
        validates :sale_item_count
        validates :sale_item_amount
        # validates :polish_id
    end

end
