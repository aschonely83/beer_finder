require "open-uri"
require "json"
require "pry"
  
class BeerFinder::API
    
      
  def self.get_breweries
    data = open("https://api.openbrewerydb.org/breweries").read
    JSON.parse(data)
  end
end
