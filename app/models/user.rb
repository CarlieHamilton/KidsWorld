class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # a user can have many items (as a seller), and many purchases (as a buyer)
  has_many :items
  has_many :purchases

  # validation to make sure that a username is present and unique
  validates_presence_of     :username
  validates_uniqueness_of   :username

  # returns a user's username
  def name
   return username
 end
end
