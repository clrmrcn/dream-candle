class AddPriceToCandles < ActiveRecord::Migration[6.1]
  def change
    add_monetize :candles, :price, currency: { present: false }
  end
end
