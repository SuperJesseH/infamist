class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :list
  # validates :name, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

end
