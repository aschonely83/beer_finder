class BeerFinder::Beer

  attr_reader :name, :state, :street, :city, :website_url

  @@all ={}

  def self.all(state)
    @@all[state] ||= self.load_by_state(state)
  end
  
  def self.load_by_state(state) 
    BeerFinder::API.get_breweries(state).collect do |beer_hash|
      BeerFinder::Beer.new(beer_hash)
    end
  end 
  
  def self.count(state)
    @@all[state].count || 0
  end   

  def initialize(attributes = {})
    @name = attributes["name"]
    @state = attributes["state"]
    @street = attributes["street"]
    @city = attributes["city"]
    @website_url = attributes["website_url"]
  end
end    
   