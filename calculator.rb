# Welcome to my calculator program
# Created: 2.9.17
# The user can choose to add, subtract, multiply, or divide, the program
# will print an error message if they try to divide by 0 or write a letter for
# where a number should go. The user will be reprompted if they type anything
# other than what I have asked them to type when deciding what math in my
# calculator.

# Welcome message to the user
puts "Welcome to my calculator!"
puts "What kind of math would you like to do?"
puts "(add, '+', subtract, '-', multiply, '*', or divide, '/')"

# Get operation type the user wants to use
operation_wanted = gets.chomp
operation = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"]

# Reprompts user if the operation type is not one allowed
until operation.include?(operation_wanted)
  puts "Please type an operation type listed above: "
  operation_wanted = gets.chomp
end

puts "\nGreat! Moving on."

# Getting numbers from the user that they want to calculate
# I found this method of reprompting the user from stackoverflow
# I do not understand it completely but I am working on understanding better
# (hence why I have added extra comments..)
first_number = nil # variable is initialized so it can be called on my method
until first_number.is_a?(Integer) do # checking method to see if input is an integer
  print "Please enter a number: "
  begin
    first_number = Integer(gets) # geting input from the user
  rescue ArgumentError # rescue only works if you know exactly what kind of error could occure in ones code (from what I understand...)
    first_number = nil # this sets the input so that loop can restart fresh
  end
end

# This is redundant, a method could likely be used here
second_number = nil
until second_number.is_a?(Integer) do
  print "Please enter another number: "
  begin
    second_number = Integer(gets)
  rescue ArgumentError
    second_number = nil
  end
end

# Math calculations are created to be called upon later
addition = first_number + second_number
subtraction = first_number - second_number
multiply = first_number * second_number

# Here is another place a method could likely be used.
# Case statment created so the correct opperations are performed depending on
# what the user chooses.
case operation_wanted
  when "add", "+"
    puts "#{first_number} + #{second_number} = #{addition}"
  when "subtract", "-"
    puts "#{first_number} - #{second_number} = #{subtraction}"
  when "multiply", "*"
    puts "#{first_number} * #{second_number} = #{multiply}"
  when "divide", "/"
    if second_number == 0 # catch for if the user tries to devide by zero
      puts "Sorry... you can't divide by 0"
    else
      divide = first_number / second_number
      puts "#{first_number} / #{second_number} = #{divide}"
    end
  else
    puts "Sorry, you've done something wrong"
end
