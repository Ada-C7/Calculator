
# Check if the input is a number (thanks stackoverflow)
def check_number?(x)
  if x.to_f.to_s == x || x.to_i.to_s == x
    true
  else
    false
  end
end

# Check the operation is valid
def check_operation?(operation)
  operation_options = ["+","add","-","subtract","*","multiply","/","divide", "^", "exponent","%", "modulo"]
  if operation_options.include? (operation)
    true
  else
    false
  end
end

# Read the first_number
print "Enter your first number > "
first_number = gets.chomp
while !check_number?(first_number)
  puts "That's not a number"
  print "Enter your first number > "
  first_number = gets.chomp
end
first_number = first_number.to_f

puts "-----------------------"

print "Enter your operation > "
operation = gets.chomp

# Read the operation
while !check_operation?(operation)
  puts "invalid operation"
  print "Enter your operation > "
  operation = gets.chomp\
end
puts "-----------------------"

# Read the second number
print "Enter your second number > "
second_number = gets.chomp
while !check_number?(second_number)
  puts "That's not a number"
  print "Enter your second number > "
  second_number = gets.chomp
end
second_number = second_number.to_f

# handle division by 0
if second_number == 0 && (operation == "/" || operation == "divide" )
  result = "invalid"
else
  # handle valid operations
  case operation
  when "+","add"
    result = first_number + second_number
  when "-", "subtract"
    result = first_number - second_number
  when "*", "multiply"
    result = first_number * second_number
  when "^", "power"
    result = first_number ** second_number
  when "/", "divide"
    result = first_number / second_number
  when "%", "modulo"
    result = first_number % second_number
  end
end

# print the formula
puts "Your formula --> #{first_number} #{operation} #{second_number} = #{result}"
