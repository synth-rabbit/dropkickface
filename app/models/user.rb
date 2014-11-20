class User < ActiveRecord::Base
  has_many :posts

  has_secure_password validations: false
end
