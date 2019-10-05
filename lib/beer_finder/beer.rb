class BeerFinder::Beer

  attr_reader :name, :state

  def self.all
    @@all ||= self.load
  end
  
  def self.load 
    BeerFinder::API.get_breweries.collect do |beer_hash|
      BeerFinder::Beer.new(beer_hash)
    end
  end      

  def initialize(attributes = {})
    @name = attributes["name"]
    @state = attributes["state"]
  end
end    
   