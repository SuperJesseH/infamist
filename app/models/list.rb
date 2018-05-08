class List < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :items, through: :list_items

  def items_in_order
# get all list_items and select the ones where list_id = self.id
# order this array by rank
#then map this over items
    a = ListItem.all.select do |list_item|
      list_item.list_id = self.id
    end
  end
end
