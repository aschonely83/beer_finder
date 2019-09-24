require "open-uri"
require "json"
require "pry"
module BeerFinder
    class API
      
      def list_breweries(state)
         response = open("https://api.openbrewerydb.org/breweries?by_state=#{state}").read
         data = JSON.parse(response)
         data["data"]
      end  
    end
end
