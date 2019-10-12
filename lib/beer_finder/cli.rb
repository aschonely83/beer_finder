class BeerFinder::CLI 

  def call
    puts "Welcome to Beer Finder" 
    get_state
    menu
  end
   
  def get_state
    puts <<-DOC
    What state would you like to search breweries for?
    Please select a state. If you are from a state with two
    names please use snake_case. (ie. new_york or new_jersey) \n
    DOC
    @@state = gets.strip
  end  

  def menu
    list_options
    @input = nil
    while @input != "exit"
      @input = gets.strip
      if  @input == "1"
        puts "The breweries in your state:"
        get_brewery 
        puts "What brewery would you like more information about?"
        brewery_info
      elsif @input == "list"
        list_options
      elsif @input == "main menu"
        get_state  
      elsif @input == "exit"
        break
      else
        puts "Not a valid option, 1, list, main menu or exit "
      end
    end
    puts "Thank you, have a nice day."
  end

  def list_options
    puts <<-LIST 
    type "1" for Brewery Info
    type "list" to return to the list of options at any time
    type "main menu" to search a new state
    type "exit" at any time to leave program
    LIST
  end  
   
  def get_brewery
    BeerFinder::Beer.all(@@state).each.with_index(1) do |brewery, index|
     puts "#{index}. #{brewery.name}"
    end
  end

  def brewery_info
    @input = gets.chomp
    index = @input.to_i-1
    if index >= 0 && index < BeerFinder::Beer.count(@@state)
      puts BeerFinder::Beer.all(@@state)[index].street
      puts BeerFinder::Beer.all(@@state)[index].city
      puts BeerFinder::Beer.all(@@state)[index].website_url
    else
     puts "I didn't understand that." unless @input == "exit"
    end
    list_options unless @input == "exit"
  end
end   