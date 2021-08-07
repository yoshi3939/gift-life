class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: true

  def self.search(search)
    if search != ""
      Item.where('name LIKE(?) OR memo LIKE(?) OR shop LIKE(?) OR shopinfo LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Item.all
    end
  end

end
