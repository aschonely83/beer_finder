class BeerFinder::CLI 

  def call
    puts "Welcome to Beer Finder."
    @input = nil
      menu
    while @input != "exit" 
    @input = gets.strip
    if  @input == "1"
      puts "The breweries in your state:" 
      print_brewery
    elsif @input == "2"
      puts "The city where the brewery is located is:"
      print_state
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

  def print_brewery
    BeerFinder::Beer.all.each do |brewery|
     puts "#{brewery.name}"
    end
  end  
      
  def menu
    puts <<-MENU
    1. Brewery Name
    type "exit" at any time to leave program.
    type "menu" to return to the menu at any time.
    MENU
  end        
end