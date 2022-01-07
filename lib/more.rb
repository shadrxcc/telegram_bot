require 'telegram/bot'

require 'net/http'

require 'json'

# require_relative 'bot'

class Info
  @values = nil

  def initialize
    @values = make_request
  end

  def make_request
    url = 'https://api.themoviedb.org/3/movie/550?api_key=1b824a2f994c09cef5af9b66a055df80'

    uri = URI(url)

    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end

  def select
    @values = @values.last

    @values
  end
end
