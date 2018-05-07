class Blist < ApplicationRecord
  belongs_to :user
  has_many :blist_items
  has_many :items, through: :blist_items
end
