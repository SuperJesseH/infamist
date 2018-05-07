class User < ApplicationRecord
  has_one :glist
  has_one :blist

    validates :name, presence: true, uniqueness: true
end
