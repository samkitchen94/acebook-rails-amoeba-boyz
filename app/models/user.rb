class User < ApplicationRecord
<<<<<<< HEAD

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, :length => { :in => 6..10 }
  validates :password_confirmation, presence: true, :length => { :in => 6..10 }

=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> upstream/master
end
