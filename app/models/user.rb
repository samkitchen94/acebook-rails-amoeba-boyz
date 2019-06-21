class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, :length => { :in => 6..10 }
  validates :password_confirmation, presence: true, :length => { :in => 6..10 }


end
