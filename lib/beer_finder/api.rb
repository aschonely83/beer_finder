class BeerFinder::API
    
  def self.get_breweries
    data = open("https://api.openbrewerydb.org/breweries?by_state=#{state}").read
    JSON.parse(data)
  end
end
