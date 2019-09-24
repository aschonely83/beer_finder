class BeerFinder::CLI 

    def call
      puts "Welcome to the Beer Finder."
      @input = nil
      menu
    end
  
    def menu
      puts <<-MENU
      1. Brewery by State
      2. Website
      type "exit" or "quit" at any time to leave program.
      MENU
      while @input != "exit" && @input != "quit"
      @input = gets.strip
      case @input
      when "1"
        puts "The breweries in your state:" 
      when "2"
        puts "The webiste for the brewery is:"
      when "exit" || "quit"
        puts "Thank you, take care."
      break
      else
        "Not a valid option"
      end
      end
    end        
  end