class Item < ActiveRecord::Base
  belongs_to :user
  has_one :order

  validates :name,:description, presence: true 
  #validates :item_type, inclusion: { in: ["import", "export"] }
  mount_uploader :image, ImageUploader
end
