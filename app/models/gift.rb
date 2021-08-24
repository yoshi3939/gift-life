class Gift < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  validates :status_id, numericality: { other_than: 1, message: 'を選択してください' }

  validates :name, presence: true

  def self.search(search)
    if search != ''
      Gift.where('name LIKE(?) OR partner LIKE(?) OR event LIKE(?) OR memo LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%",
                 "%#{search}%")
    else
      Gift.all
    end
  end
end
