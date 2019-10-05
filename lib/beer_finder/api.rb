require "open-uri"
require "json"
class BeerFinder::API

    
  def self.get_breweries(state)
    data = open("https://api.openbrewerydb.org/breweries?by_state=#{state}").read
    JSON.parse(data)
  end
end
