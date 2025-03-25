class User < ApplicationRecord
  has_many :books, inverse_of: :author
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
