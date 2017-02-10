#Janice Lichtman's Calulator Program


#A method for testing whether user input is a number
def number_test(number)
  return Float(number) != nil rescue false
end

#A method for deciding if a result is an integer, and tells the user if it is.
def is_result_integer(result)
  if result == Integer(result)
    puts "Your result is the integer, #{Integer(result)}"
  end
end

puts "Hello, I am your calculator. As with most caluclators you have probably used, you will enter the first number in your calculation, then the operation, then the second number, and I will magically give you the result.
Please enter your first number:"
num_1 = gets.chomp

# checks whether the user input is a number, and continues asking for input until a number is given
until number_test(num_1)
  puts "That is not a number. Please try again:"
  num_1 = gets.chomp
end
num_1 = num_1.to_f


puts "What operation shall we do?
Choices: add (or +), subtract (or -), multiply (or *), divide (or /), exponentiate (or ^)"
operation = gets.chomp

#checks whether the user input is a valid operation, and continues asking for input until a valid response is given
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponentiate", "^"].include? (operation)
  
  puts "That wasn't one of the choices. Try again:"
  operation = gets.chomp
end


puts "Please enter your second number:"
num_2 = gets.chomp

#checks whether the user input is a number, and continues asking for input until a number is given
until number_test(num_2)
  puts "That is not a number. Please try again:"
  num_2 = gets.chomp
end
num_2 = num_2.to_f


#methods to perform the calculating operations
def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def exponentiate(num_1, num_2)
  return num_1 ** num_2
end

#Performs the requested calculation and displays results to the user. Also tells the user if the result is an integer. Gives an "impossible" message if the user tries to divide by zero.

case operation
when "add", "+"
  sum = add(num_1, num_2)
  puts "#{num_1} + #{num_2} = #{sum}"
  is_result_integer(sum)
when "subtract", "-"
  difference = subtract(num_1, num_2)
  puts "#{num_1} - #{num_2} = #{difference}"
  is_result_integer(difference)
when "multiply", "*"
  product = multiply(num_1, num_2)
  puts "#{num_1} * #{num_2} = #{product}"
  is_result_integer(product)
when "divide", "/"
  if num_2 == 0
    puts "C'mon, you know better than trying to divide by zero.\nCome back later when you've come to your senses!"
  else
    quotient = divide(num_1, num_2)
    puts "#{num_1} / #{num_2} = #{quotient}"
    is_result_integer(quotient)
  end
when "exponentiate", "^"
  exponentiation = exponentiate(num_1, num_2)
  puts "#{num_1} ^ #{num_2} = #{exponentiation}"
  is_result_integer(exponentiation)
end
