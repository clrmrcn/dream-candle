class CandlesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @candles = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end
end
