class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_secure_password
  include SessionsHelper

  def User.digest(string)
    BCrypt::Password.create(string)
  end
end
