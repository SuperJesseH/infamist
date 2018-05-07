class Glist < ApplicationRecord
  belongs_to :user
  has_many :glist_items
  has_many :items, through: :glist_items
end
