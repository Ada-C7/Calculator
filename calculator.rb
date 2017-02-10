# Build a calculator command line interface (CLI) that allows a user to perform simple arithmetic.

# defines addition, subtraction, multiplication, division,
# exponent, and modulo methods
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

# error when dividing by 0
def divide(a, b)
  if b != 0
    return a / b
  else
    puts "You can't divide by 0!"
    return "impossible"
  end
end

# Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
def power(a, b)
  return a**b
end

# Add support for the modulo operator (10 % 3 = 1).
def mod(a, b)
  return a % b
end


operators = ["add", "addition", "plus", "+", "subtract", "subtraction",
   "minus", "-", "multiply", "multiplication", "times", "*", "x", "divide",
   "division", "divided by", "divide by", "/", "exponent",
   "**", "power", "modulo", "mod", "%"]


# asks the user for an operation (string or numeric symbol) and two numbers
# Gracefully handle unexpected user input:
# this section is repetitive - Brenna
print "HEY YOU! Yeah, you. What kind of math operation is your jam right now? "
operator = gets.chomp
while operators.include?(operator) == false
  print "Nah, try again with an math operator this time: "
  operator = gets.chomp
end

print "Algebraic! What's the first number? "
first_num = gets.chomp
while first_num.to_i.to_s != first_num
  print "Nah, try again with a number this time: "
  first_num = gets.chomp
end

print "Radical! What's the second number? "
second_num = gets.chomp
while second_num.to_i.to_s != second_num
  print "Nah, try again with a number this time: "
  second_num = gets.chomp
end

first_num = first_num.to_i
second_num = second_num.to_i

# tried to differentiate between floats and integers
# didn't work since I test for numbers with .to_i above
# if first_num % 1 != 0
#   first_num = first_num.to_f
# else
#   first_num = first_num.to_i
# end
#
# if second_num % 1 != 0
#   second_num = second_num.to_f
# else
#   second_num = second_num.to_i
# end


# Print out the formula in addition to the result, i.e. 2 + 2 = 4
puts "Mathematical! Here's the answer: "
case operator
  when "add", "addition", "plus", "+"
    puts "#{first_num} + #{second_num} = #{add(first_num, second_num)}"

  when "subtract", "subtraction", "minus", "-"
    puts "#{first_num} - #{second_num} = #{subtract(first_num, second_num)}"

  when "multiply", "multiplication", "times", "*"
    puts "#{first_num} * #{second_num} = #{multiply(first_num, second_num)}"

  when"x", "divide", "division", "divided by", "divide by", "/"
    puts "#{first_num} / #{second_num} = #{divide(first_num, second_num)}"

  when "exponent", "**", "power"
    puts "#{first_num}^#{second_num} = #{power(first_num, second_num)}"

  when "modulo", "mod", "%"
    puts "#{first_num} % #{second_num} = #{mod(first_num, second_num)}"
# test that all cases are working
  else
    puts "Woopsie!"
end


# Tested & Verified
# adds numbers with both add and +
# subtracts numbers with both subtract and -
# adds numbers with both multiply and *
# adds numbers with both divide and /
# handles divide when attempting to divide by zero.
# handles erroneous input. For example the user might enter clown when asked to enter a number.
# needs to handle erroneous operators.

# Optional Enhancements - not completed
# What happens if the user input is nil (i.e., the user just pressed enter)?
# What happens if the user tries to add hotdog to elephant?
# Make your program know when it needs to return an integer versus a float.
# Add support for parentheticals, i.e. 10 / (5 + 5) = 1.
