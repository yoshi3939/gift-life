class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :gifts
  has_many :interests
  has_many :items

  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'は半角英数字のみ入力可です' }

end
