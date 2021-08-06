class Gift < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  validates :name, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status

  validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}

end
