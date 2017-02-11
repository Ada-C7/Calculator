# Define a method that checks if the user number entries are integers
def is_integer(num)
  num.to_i.to_s == num
end

# Define necessary methods: one for addition, one for subtraction, one for multiplication, one for division
def addition(integer_one, integer_two)
  return integer_one + integer_two
end

def subtraction(integer_one, integer_two)
  return integer_one - integer_two
end

def multiplication(integer_one, integer_two)
  return integer_one * integer_two
end
# division method includes fix for ZeroDivisionError
def division(integer_one, integer_two)
  return integer_one / integer_two rescue 0
end

# Ask user if they want to run the program and continue to repeat until they don't
puts "RUBY CALCULATOR."
puts "Do you have something to calculate?"
command = gets.chomp.downcase
until command == "no"

  # Gather number from user and use method to check that user entry is valid
  puts " Please enter your first number:"
  num_one = gets.chomp
  until is_integer(num_one)
    puts "Invalid entry. Please enter a number."
    num_one = gets.chomp
  end
  # Change number back from a string to an integer in new variable
  integer_one = num_one.to_i

  # Get operation from user
  puts "Please enter your operation: add (+), subtract (-), multiply (*), or divide (/):"
  operation = gets.chomp
  # Prompt user for valid operation if invalid entry is given
  until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operation)
    puts "Please enter a valid operation: add (+), subtract (-), multiply (*), or divide (/)"
    operation = gets.chomp
  end

  # Get second number in same way as first
  puts "Please enter your second number:"
  num_two = gets.chomp
  until is_integer(num_two)
    puts "Invalid entry. Please enter a number."
    num_two = gets.chomp
  end
  integer_two = num_two.to_i

  # Use appropriate method to get answer and output it for user
  if operation == "+" || operation == "add"
    result = addition(integer_one, integer_two)
    puts result
  elsif operation == "-" || operation == "subtract"
    result = subtraction(integer_one, integer_two)
    puts result
  elsif operation == "*" || operation == "multiply"
    result = multiplication(integer_one, integer_two)
    puts result
  elsif operation == "/" || operation == "divide"
    result = division(integer_one, integer_two)
    puts result
  end
  puts "Do you have something to calculate?"
  command = gets.chomp.downcase
end
puts "Thanks for using the ruby calculator!"
