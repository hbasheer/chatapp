require 'httparty'

class Giphy
  include HTTParty
  default_options.update(verify: false)

  format :json
  base_uri 'api.giphy.com/v1/gifs'

  def initialize
    @options = {
        headers: {
          "Content-Type" => "application/json",
          "Accept" => "application/json"
        }
      }
  end

  def random(tag)
    self.class.get("/random?api_key=dc6zaTOxFJmzC&tag=#{tag}", @options)
  end
end