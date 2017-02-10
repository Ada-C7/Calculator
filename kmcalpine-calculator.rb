# method to check if a string is actually the same as an integer
class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def calculate(operator, num_1, num_2)
  case operator
  when "add", "+"
    puts "#{num_1} + #{num_2} = #{num_1 + num_2}"
  when "subtract", "-"
    puts "#{num_1} - #{num_2} = #{num_1 - num_2}"
  when "multiply", "*"
    puts "#{num_1} * #{num_2} = #{num_1 * num_2}"
  when "divide", "/"
    puts "#{num_1} / #{num_2} = #{num_1 / num_2}"
  when "exponent", "^", "**"
    puts "#{num_1} ^ #{num_2} = #{num_1 ** num_2}"
  when "modulo", "%", "remainder"
    puts "#{num_1} % #{num_2} = #{num_1 % num_2}"
  else
    puts "Try again."
  end
end

# outputs welcome message to the user
# requests user input to determine which math function will be used
puts "WELCOME TO THE RUBY CALCULATOR"
print "Enter what kind of math you'd like to do: "
user_math_type = gets.chomp

# stores valid math operators
valid_operators = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponent", "^", "**", "modulo", "%", "remainder"]

# repeats error messand until user has valid input
# to determine which math function will be used
until valid_operators.include?(user_math_type)
  print "Invalid. Enter what kind of math you'd like to do: "
  user_math_type = gets.chomp
end

# outputs message to the user requesting two numbers
puts "Now enter two numbers."
print "First Number: "
user_num_1 = gets.chomp

# repeats error message until user has entered valid first number
until user_num_1.is_integer?
  print "Numbers only, please. First Number: "
  user_num_1 = gets.chomp
end

# converts user's first number from string to integer
user_num_1 = user_num_1.to_i

# outputs message to user requesting second number
print "Second Number: "
user_num_2 = gets.chomp

# repeats error message until user has entered valid second number
until user_num_2.is_integer?
  print "Numbers only, please. Second Number: "
  user_num_2 = gets.chomp
end

# converts user's second number from string to integer
user_num_2 = user_num_2.to_i

# runs the caluclate method
calculate(user_math_type, user_num_1, user_num_2)
