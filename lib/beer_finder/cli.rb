class BeerFinder::CLI 

    def call
      puts "Welcome to Beer Finder."
      @input = nil
      menu
      while @input != "exit" 
        @input = gets.strip
        if  @input == "1"
          puts "The breweries in your state:" 
        elsif @input == "2"
          puts "The webiste for the brewery is:"
        elsif @input == "menu"
          menu
        elsif @input == "exit" 
          puts "Thank you, have a nice day."
        break
        else
          puts "Not a valid option, select 1, 2, or exit "
        end
      end
    end

    def list_breweries
      API.new.import
    end
    
    def by_city
      list_breweries.each do |name, city|
        puts "#{name}: $#{city}"
      end
    end
    
    def by_state
      list_breweries.each do |name, state|
        puts "#{name}: $#{state}"
      end
    end
      
    def menu
      puts <<-MENU
      1. Brewery by State
      2. Website
      type "exit" at any time to leave program.
      type "menu" to return to the menu at any time.
      MENU
    end        
end