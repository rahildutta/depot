class User < ActiveRecord::Base
	has_one :cart
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
