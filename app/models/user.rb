require 'bcrypt'

class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :hashed_password
  validates_uniqueness_of :email

  has_many :game

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(input_password)
    if self.password == input_password
      return self
    else
      return nil
    end
  end


end
