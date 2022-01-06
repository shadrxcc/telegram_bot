require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot'

class Info
  @values = nil

  def initialize
    @values = request
  end

  def request
    url = 'https://api.themoviedb.org/3/movie/550?api_key=1b824a2f994c09cef5af9b66a055df80'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def select_first
    @values = @values
    @values
  end
end
