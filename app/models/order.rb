class Order < ApplicationRecord
  belongs_to :user
  belongs_to :candle
  monetize :amount_cents
end
