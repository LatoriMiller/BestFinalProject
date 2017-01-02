class Ad < ApplicationRecord
  validates :title, :description, :price, :contact_info, presence: true
  validates :title, uniqueness: true, length: { maximum: 140 }

  belongs_to :category

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
