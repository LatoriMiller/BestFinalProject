class Ad < ApplicationRecord
  validates :title, :description, :price, :contact_info, presence: true
  validates :title, uniqueness: true, length: { maximum: 140 }
end
