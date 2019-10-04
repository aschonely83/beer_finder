class BeerFinder::CLI 

  def call
    puts "Welcome to Beer Finder" 
    puts <<-DOC
    What state would you like to search breweries for?
    Please select a state. If you are from a state with two
    names please use snake_case. (ie. new_york or new_jersey) \n
    DOC
    menu
  end
   
  def menu
    list_options
    @input = nil
    while @input != "exit"
    @input = gets.strip
    if  @input == "1"
      puts "The breweries in your state:"
      get_brewery
    elsif @input == "list"
      list_options
    elsif @input == "exit"
      puts "Thank you, have a nice day."
      break
    else
      puts "Not a valid option, select 1, 2, or exit "
    end
  end
end

  def get_brewery
    BeerFinder::Beer.all.each.with_index(1) do |brewery, index|
     puts "#{index}. #{brewery.name}"
    end
  end
     
  def list_options
    puts <<-LIST 
    1. Brewery Name
    type "exit" at any time to leave program.
    type "list" to return to the list of options at any time.
    LIST
  end
end   