class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bikes, dependent: :destroy
  has_many :bookings
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
