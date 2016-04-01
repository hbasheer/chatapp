class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def fetch_gif
    giphy_client = Giphy.new
    response = giphy_client.random(params[:message])
    @response_data = response["data"]
  end
end
