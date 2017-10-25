class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
