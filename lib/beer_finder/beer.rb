module BeerFinder
    class Beer

        attr_reader :name, :state

        @@all = []

        def self.all
            @@all
        end    

      def initialize(name, state)
        @name = name
        @state = state
        @@all << self
      end
    end    
end   