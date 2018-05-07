class Item < ApplicationRecord
  has_many :glist_items
  has_many :blist_items
  has_many :glists, through: :glist_items
  has_many :blists, through: :blist_items

  validates :name, presence: true, uniqueness: true
end
