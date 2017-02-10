#probably want an until loop, while loop, and/or method

def get_operation(valid_operations)
  operation = gets.chomp
  until valid_operations.include? operation  #this is confusing...when you see include
    #think "contains"
    puts "Invalid entry, please enter one of the following: + , add, -,
    subtract, *, multiply, /, divide."
    operation = gets.chomp
  end
  return operation #This is like you asking someone for something you need, but
  #never actually receiving it. I need to put return because we need this info
  #later in the program.
end

def get_integer()
  first_number = Integer(gets.chomp) rescue false #we are defining first number as
  #an integer that the user enters. If they enter something other than an integer,
  #rescue will return false and we move to the until loop.
  until first_number#we can only have a first_number if the conditions above are met
    puts "Invalid entry, please enter an integer."
    first_number = Integer(gets.chomp) rescue false
  end
  return first_number
end

def get_non_zero()
  second_number = get_integer()
  until second_number != 0
    puts "Invalid entry, please enter a number other than zero!"
    second_number = get_integer()
  end
  return second_number
end


puts "Hello, welcome to Chantal's calculator. All you have to do is enter
an operation and two numbers...we will take care of the rest!"

puts "Please enter an operation (e.g. +, add, -, subtract, etc.): "

valid_operations = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide"]

valid_operation = get_operation(valid_operations) #I'm just storing the result from
#my method in this variable

puts "Please enter a number: "

first_number = get_integer()

puts "Please enter another number: "

if valid_operation == "divide" || valid_operation == "/"
  second_number = get_non_zero()
else
  second_number = get_integer()
end


case valid_operation
when "+", "add"
  addition = first_number + second_number
  puts "The sum of #{first_number} and #{second_number} is #{addition}!"
when "-", "subtract"
  subtraction = first_number - second_number
  puts "The result of #{first_number} minus #{second_number} is #{subtraction}!"
when "*", "multiply"
  multiplication = first_number * second_number
  puts "The result of #{first_number} multiplied by #{second_number} is #{multiplication}!"
when "/", "divide"
  division = first_number / second_number
  puts "The result of #{first_number} divided by #{second_number} is #{division}!"
end
