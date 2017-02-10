# opening statment
print "\nAre you ready to do some math?"

# establish array of operators
operators = [ "add", "+", "subtract", "-", "multiply", "*", "divide", "/" ]

# get user input for operation
print "\n\nWhat do you want to do? You can enter add, + , subtract, - , multiply, * , divide, or /.\n\n"
operation = gets.chomp.downcase

# make sure operational input is not erroneous
until operators.include?(operation)
  print "\nThat's not an option.  What do you want to do?\n\n"
  operation = gets.chomp.downcase
end

# define methods for the 4 possible operations
def add(num_one, num_two)
  return num_one + num_two
end

def subtract(num_one, num_two)
  return num_one - num_two
end

def multiply(num_one, num_two)
  return num_one * num_two
end

def divide(num_one, num_two)
  if num_one == 0 || num_two == 0
    return "0"
  else
    return num_one / num_two
  end
end

# get user input for two numbers
print "\nWhat is your first number?\n\n"
num_one = gets.chomp
integer_version = num_one.to_i
until integer_version.to_s == num_one
  print "\nThat's not a number.  What is your first number?\n\n"
  num_one = gets.chomp
  integer_version = num_one.to_i
end
num_one = integer_version

print "\nWhat is your second number?\n\n"
num_two = gets.chomp
integer_version = num_two.to_i
until integer_version.to_s == num_two
  print "\nThat's not a number.  What is your second number?\n\n"
  num_two = gets.chomp
  integer_version = num_two.to_i
end
num_two = integer_version

# based on the operation selected, determine the method and do the math.
if operation == "add" || operation == "+"
  solution = add(num_one, num_two)
elsif operation == "subtract" || operation == "-"
  solution = subtract(num_one, num_two)
elsif operation == "multiply" || operation == "*"
  solution = multiply(num_one, num_two)
elsif operation == "divide" || operation == "/"
  solution = divide(num_one, num_two)
end

# print result
print "\nYour answer is: #{solution}\n\n"
