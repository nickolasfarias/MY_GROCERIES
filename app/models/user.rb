class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  has_many :orders
  validates :first_name, :last_name, :age, :password, :address, presence: true
  validates :email, presence: true, uniqueness: true
end
