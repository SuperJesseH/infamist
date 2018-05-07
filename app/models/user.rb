class User < ApplicationRecord
  has_one :list
  validates :name, presence: true, uniqueness: true
end
