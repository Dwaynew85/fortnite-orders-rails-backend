class Item < ApplicationRecord
    has_many :orders
    has_many :users, through: :orders

    def self.set_items(items_params)
        items_params.collect do |item|
            item = Item.find_or_create_by(item)
            item.save
            item
        end
    end
end
