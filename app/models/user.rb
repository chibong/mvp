class User < ActiveRecord::Base
  has_secure_password
  has_many :questions
  validates :name, uniqueness: true

end
