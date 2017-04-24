class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :hashed_password
  validates_uniqueness_of :email

  belongs_to :game
end
