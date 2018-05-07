class User < ApplicationRecord
  has_one :glist
  has_one :blist
end
