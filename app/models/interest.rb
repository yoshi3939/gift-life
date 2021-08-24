class Interest < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: true

  def self.search(search)
    if search != ''
      Interest.where('name LIKE(?) OR memo LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Interest.all
    end
  end
end
