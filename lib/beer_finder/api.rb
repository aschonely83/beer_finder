require "open-uri"
require "json"
require "pry"
  
class BeerFinder::API
    
      
  def list_breweries(state)
    data = open("https://api.openbrewerydb.org/breweries?by_state=#{state}").read
    response = JSON.parse(data)
    response["responses"]
  end
      
  def import
    list_breweries.collect {|b| Beer.new_from_hash(b)}
  end
end
