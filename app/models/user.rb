class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true # checks email address is not blank & that it doesn't already exist in the db

end
