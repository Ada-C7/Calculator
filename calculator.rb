puts "HELLO I'm Alan and I'm trapped in your computer. I must perform"
puts "an arithmetic problem for my soul to be released from this cold,"
puts "binary prison. Which operation would you like me to perform?"
print "> "
operation_input = gets.chomp.downcase

operations = {
  "add" => "+",
  "subtract" => "-",
  "multiply" => "*",
  "divide" => "/",
  "exponent" => "**",
  "modulus" => "%"
}

# loop until the user inputs a valid operation from the hash
until operations.has_key?(operation_input) || operations.has_value?(operation_input)
  puts "\nInvalid! Please type one of the following operations:"
  operations.each {|k, v| puts "\t#{k} (or #{v})"}
  print "> "
  operation_input = gets.chomp
end

# gets valid user input for numbers
def get_number
  input = gets.chomp

  while true
    if input == "0"
      return 0
    elsif input.to_i != 0
      return input.include?(".") ? input.to_f : input.to_i
    elsif input[0] == "(" && input[-1] == ")"
      return input
    else
      print "Please input a valid number > "
      input = gets.chomp
    end
  end
end

puts "\nNow, input the numbers you want to perform the operation on!"
print "First number > "
first = get_number
print "Second number > "
second = get_number

# convert the operation input to an operator if it is a word
if operations.values.include? operation_input
  operation = operation_input
else
  operation = operations[operation_input]
end

# method to solve expressions in parenthesis
def solve(expression)
  if expression.is_a?(String) && expression.include?("(")
    components = expression[1..-2].split(" ")
    first = components[0].include?(".") ? components[0].to_f : components[0].to_i
    second = components[2].include?(".") ? components[2].to_f : components[2].to_i
    operator = components[1]
    return first.send(operator, second)
  else
    return expression
  end
end

if operation == "/" && second == 0
  result = "undefined"
else
  result = solve(first).send(operation, solve(second))
end

puts "\n#{first} #{operation} #{second} = #{result}"
puts "I AM SET FREEEEE!"
