class BeerFinder::Beer

  attr_reader :name, :brewery, :link

  @@all = []

  def self.all
    @@all
  end    

  def initialize(name, brewery, link)
    @name = name
    @state = state
    @brewery = brewery
    @@all << self
  end
end    
   