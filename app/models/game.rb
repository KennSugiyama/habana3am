class Game < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :hashed_password
  validates_uniqueness_of :email

  has_many :users
  has_many :cards
end
