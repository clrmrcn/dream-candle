class Candle < ApplicationRecord
  belongs_to :category
  has_one_attached :photo
  monetize :price_cents
end
