module BeerFinder
    class API
      
      def self.get_brewery(state)
        response = HTTParty.get("https://api.openbrewerydb.org/breweries?by_state=#{state}")
      end  


end
