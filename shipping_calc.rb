require './lib/parcel'

def main_menu
  space
  puts "What are you shipping? Type 'p' for package or 'e' for envelope."
  ship_type = gets.chomp
  space

  if ship_type == 'p'
    package_details
  else
    puts "Those are lame"
    space
    try_again
    space
  end
end

def package_details
  puts "Enter the package weight in lbs"
  @weight = gets.chomp.to_i
  space
  puts "How many inches long?"
  @length = gets.chomp.to_i
  space
  puts "How many inches wide?"
  @width = gets.chomp.to_i
  space
  puts "How many inches tall?"
  @height = gets.chomp.to_i
  space
  @package = Parcel.new(@length, @width, @height, @weight)
  total_cost
end

def total_cost
  total = @package.cost_to_ship

  if total == 0.0
    puts "You cannot use any letters or special characters in your calculation. Try again."
    space
    main_menu
  else
    puts "Your cost is $#{total}"
  end

  puts "\n"
  puts "Would you like to calculate the shipping for something else. Y or N?"
  answer = gets.chomp.downcase
  space

  if answer == 'y'
    main_menu
  elsif answer != 'y' 
    puts "I'll take that as a definite NO, so have a nice day."
    space
  else
    puts "See you next time!"
    space
  end
end

def space
  puts "\n"
end

def try_again
  puts "Try again? Y or N?"
  answer = gets.chomp.downcase
  space

  if answer == 'y'
    main_menu
  elsif answer != 'y' 
    puts "I'll take that as a definite NO, so have a nice day."
    space
  else
    puts "See you next time!"
    space
  end
end




main_menu