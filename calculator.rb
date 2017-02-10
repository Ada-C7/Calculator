#method that handles addition
def add(num_one, num_two)
  puts "#{num_one} + #{num_two} = #{num_one + num_two}\n"
end

#method that handles subtraction
def subtract(num_one, num_two)
  puts "#{num_one} - #{num_two} = #{num_one + num_two}\n"
end

#method that handles multiplication
def multiply(num_one, num_two)
  puts "#{num_one} * #{num_two} = #{num_one * num_two}\n"
end

#method that handles division
def divide(numerator, denominator)
  puts "#{numerator} / #{denominator} = #{numerator / denominator}\n"
end

#method that handles exponentiation
def exponentiate(number, power)
  power = power.to_int
  puts "#{number} ** #{power} = #{number ** power}\n"
end

#method that handles modulo
def modulo(dividend, divisor)
  puts "#{dividend} % #{divisor} = #{dividend.modulo(divisor)}\n"
end

def good_number(division, exp, second_number)
  #ensures that user inut is valid integer value
  good_input = false
  while !good_input
    number = gets.chomp
    if number !~ /^(-)?(\d)+(.)?(\d)*$/
      puts ">>>>>> Try again. You must enter an number."
    else
      #prevents division by zero
      if number == "0" && division && second_number
        puts ">>>>>> Try again. Division by 0 is forbidden."
      else
        #prevents exponentiating a number by a non-integer value
        if number !~ /^(-)?(\d)+(.)?(0)*$/ && exp && second_number
          puts ">>>>>> Try again. The power of the exponent must be an integer."
        else
        #escape while loop
        good_input = true
        end
      end
    end
  end
  return number.to_f
end

#program title art
title= "╔═╗┌─┐┬  ┌─┐┬ ┬┬  ┌─┐┌┬┐┌─┐┬─┐
║  ├─┤│  │  │ ││  ├─┤ │ │ │├┬┘
╚═╝┴ ┴┴─┘└─┘└─┘┴─┘┴ ┴ ┴ └─┘┴└─
"
#entry point of the program
#prints welcome message
puts "\n#{title}\nWelcome to my calculator program!\n"
print "What operation would you like to execute?: "

#array that stores all the possible operations inputs in the calculator
operation_options = [ "add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponent", "**", "mod", "%" ]
user_operator_input = gets.chomp.downcase

#ensures that user input for the operation is valid
until operation_options.include?(user_operator_input)
  print "Try again: please enter a valid mathematical operation: "
  user_operator_input = gets.chomp.downcase
end

#informs the user of the chosen operation
case user_operator_input
  when "add", "+"
    puts "\nWe're adding numbers"
  when "subtract", "-"
    puts "\nWe're subtracting numbers"
  when "multiply", "*"
    puts "\nWe're multiplying numbers"
  when "divide", "/"
    puts "\nWe're dividing numbers"
  when "exponent", "**"
    puts "\nWe're exponentiating numbers"
  when "mod", "%"
    puts "\nWe're finding the remainder from a division operation"
  #for testing case/when values
  else
    puts "\nThis must be a dream!"
end

#gets two number inputs from the user
puts "\nPlease enter the numbers you want to used for this operation"
which_number = ["First", "Second"]
number = []

2.times do |i|
  print "#{which_number[i]} number: "
  number << good_number((user_operator_input == "divide" || user_operator_input == "/" || user_operator_input == "mod" || user_operator_input == "%" ), 
    (user_operator_input == "exponent" || user_operator_input == "**"), i == 1)
end

puts "The numbers are #{number[0]} and #{number[1]}\n\n"

print "Results: "
#performs and prints appropriate operations
case user_operator_input
  when "add", "+"
    add(number[0], number[1])
  when "subtract", "-"
    subtract(number[0], number[1])
  when "multiply", "*"
    multiply(number[0], number[1])
  when "divide", "/"
    divide(number[0], number[1])
  when "exponent", "**"
    exponentiate(number[0], number[1])
  when "mod", "%"
    modulo(number[0], number[1])
  #for testing case/when values
  else
    puts "\nThis can't be happening!"
end
puts  "\n\n"
