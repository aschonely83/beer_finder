module BeerFinder
    class Beer

        attr_reader :name, :state, :link

        @@all = []

        def self.all
            @@all
        end    

      def initialize(name, state, link)
        @name = name
        @state = state
        @link = link 
        @@all << self
      end
    end    
end   