require "open-uri"
require "json"
require "pry"
module BeerFinder
    class API
      
      def list_breweries(state)
         data = open("https://api.openbrewerydb.org/breweries?by_state=#{state}").read
         response = JSON.parse(data)
         response["responses"]
      end
      
      def import
        list_breweries.collect {|b| Beer.new_from_hash(b)}
      end
    end
end
