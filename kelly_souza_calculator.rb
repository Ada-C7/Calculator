



#define metohds for + - * and /

def add_these(number1,number2)
  puts "your outcome is"
  return number1 + number2
end

def subtract_these(number1,number2)
  puts "your outcome is"
  return number1 - number2
end

def multiply_these(number1,number2)
  puts "your outcome is"
  return number1 * number2
end

def divide_these(number1,number2)
  puts "your outcome is"
  return number1 / number2
end

def exponify_these(number1,number2)
  puts "your outcome is"
  return number1 ** number2
end

#get user input on numbers to calculate
#and calculation method
puts "Enter an operation"
command =  gets.chomp


puts "please enter number 1"
user_number1 = gets.chomp.to_i
puts "please enter number 2"
user_number2 = gets.chomp.to_i

#establish when to use each operation
case command
when "add", "+", "addition", "plus"
  puts "We're adding numbers"
  operator = "+"
  outcome = add_these(user_number1,user_number2)
when "subtract", "-", "minus", "difference"
  puts "We're subtracting numbers"
  operator = "-"
  outcome = subtract_these(user_number1,user_number2)
when "multiply", "*", "times", "multiplication"
  puts "We're multiplying numbers"
  operator = "*"
  outcome = multiply_these(user_number1,user_number2)
when "divide", "/", "division"
  puts "We're dividing numbers"
  operator = "/"
  outcome = divide_these(user_number1,user_number2)
when "exponify", "**", "exponent"
  puts "We're exponentiating numbers"
  operator = "^"
  outcome = exponify_these(user_number1,user_number2)
else
  puts "Sorry, we don't know how to do that!"
end

#output info to user
puts outcome
puts "#{user_number1} #{operator} #{user_number2} = #{outcome}"
# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.
# Optional Enhancements
# Print out the formula in addition to the result, i.e. 2 + 2 = 4
# Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
# Add support for the modulo operator (10 % 3 = 1).
# Gracefully handle unexpected user input:
# What happens if the user input is nil (i.e., the user just pressed enter)?
# What happens if the user tries to add hotdog to elephant?
# Make your program know when it needs to return an integer versus a float.
# Add support for parentheticals, i.e. 10 / (5 + 5) = 1.



#define metohds for + - * and /

def add_these(number1,number2)
  puts "your outcome is"
  return number1 + number2
end

def subtract_these(number1,number2)
  puts "your outcome is"
  return number1 - number2
end

def multiply_these(number1,number2)
  puts "your outcome is"
  return number1 * number2
end

def divide_these(number1,number2)
  puts "your outcome is"
  return number1 / number2
end

def exponify_these(number1,number2)
  puts "your outcome is"
  return number1 ** number2
end

#get user input on numbers to calculate
#and calculation method
puts "Enter an operation"
command =  gets.chomp


puts "please enter number 1"
user_number1 = gets.chomp.to_i
puts "please enter number 2"
user_number2 = gets.chomp.to_i

#establish when to use each operation
case command
when "add", "+", "addition", "plus"
  puts "We're adding numbers"
  operator = "+"
  outcome = add_these(user_number1,user_number2)
when "subtract", "-", "minus", "difference"
  puts "We're subtracting numbers"
  operator = "-"
  outcome = subtract_these(user_number1,user_number2)
when "multiply", "*", "times", "multiplication"
  puts "We're multiplying numbers"
  operator = "*"
  outcome = multiply_these(user_number1,user_number2)
when "divide", "/", "division"
  puts "We're dividing numbers"
  operator = "/"
  outcome = divide_these(user_number1,user_number2)
when "exponify", "**", "exponent"
  puts "We're exponentiating numbers"
  operator = "^"
  outcome = exponify_these(user_number1,user_number2)
else
  puts "Sorry, we don't know how to do that!"
end

#output info to user
puts outcome
puts "#{user_number1} #{operator} #{user_number2} = #{outcome}"
