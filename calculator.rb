# My calculator program!
# Jackie Watanabe
# February 9th, 2017
# Program that prompts user and gets numbers and calculates answer using mathematical operations

puts "Hello! Welcome to my Calculator!\n\n\nPlease enter a number: "
number1 = gets.chomp.to_i
puts "Please enter another number! "
number2= gets.chomp.to_i
puts "Ok, now what do you want to do with the numbers? [+ (or \'add\'), - (or \'subtract\'), * (or \'multiply\'), / (or \'divide\')]"

user_operation = gets.chomp

operation_choices = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"]

until operation_choices.include?(user_operation)
  puts "I'm very particular. I only accept add, +, subtract, -, multiply, *, divide, or /.\nPlease enter one of these commands: "
  user_operation = gets.chomp
end


# I originally did a bunch of conditionals to try and eliminate user inputs that did not match

# until user_operation == "add" || user_operation == "+" || user_operation == "subtract" || user_operation == "-" || user_operation == "multiply" || user_operation == "*" || user_operation == "divide" || user_operation == "/"
#   puts "I'm very particular. I only accept add, +, subtract, -, multiply, *, divide, or /.\nPlease enter one of these commands: "
#   user_operation = gets.chomp
# end


### I thought about creating a method to try and automatically do calculation
# operator = [+, -, * , /]
#
# if user_operation.downcase == "add" || user_operation == "+"
#   operator =
# elsif user_operation.downcase == "subtract" || user_operation == "-"
#   operator = "-"
# elsif user_operation.downcase == "multiply" || user_operation == "*"
#   operator = "*"
# elsif user_operation.downcase == "divide" || user_operation == "/"
#   operator = "/"
# end
#
# def math(num1, num2, answer1)
#   puts "#{number1} " " #{number2} = #{answer}"
# end

### I created methods here for each mathematical operation....not sure if this is the part I was supposed to turn into methods, or if it's another part of the code....?

def addition(num1, num2)
  answer = num1 + num2
  puts "#{num1} + #{num2} = #{answer}"
end

def subtraction(num1, num2)
  answer = num1 - num2
  puts "#{num1} - #{num2} = #{answer}"
end

def multiplication(num1, num2)
  answer = num1 * num2
  puts "#{num1} * #{num2} = #{answer}"
end

def division(num1, num2)
  answer = num1 / num2
  puts "#{num1} / #{num2} = #{answer}"
end

case user_operation
  when "add", "+"
    addition(number1, number2)
  when "subtract", "-"
    subtraction(number1, number2)
  when "multiply", "*"
    multiplication(number1, number2)
  when "divide", "/"
    division(number1, number2)
  else
    puts "I dunno, man"
end



### This was my original code before I created methods.

# case user_operation
#   when "add", "+"
#     answer = number1 + number2
#     puts "#{number1} + #{number2} = #{answer}"
#   when "subtract", "-"
#     answer = number1 - number2
#     puts "#{number1} - #{number2} = #{answer}"
#   when "multiply", "*"
#     answer = number1 * number2
#     puts "#{number1} * #{number2} = #{answer}"
#   when "divide", "/"
#     answer = number1 / number2
#     puts "#{number1} / #{number2} = #{answer}"
#   else
#     puts "I dunno, man"
# end
