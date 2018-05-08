class List < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :items, through: :list_items

  def get_items_in_order
    self.items.map do |item|

    end
  end
end
