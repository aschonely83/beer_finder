class BeerFinder::CLI 

    def call
      puts "Welcome to the Beer Finder."
      @input = nil
      menu
    end
  
    def menu
      puts <<-MENU
      1. Brewery
      2. Location
      type "exit" or "quit" at any time to leave program.
      MENU
      while @input != "exit" && @input != "quit"
      @input = gets.strip
      case @input
      when "1"
        beer_list
      when "2"
        location
      when "exit" || "quit"
        puts "Thank you, take care."
      break
      else
        "Not a valid option"
      end
      end
    end        
  end