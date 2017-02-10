puts "Hello! I am a simple calculator. I can add, substract, multiply and divide.\n "
#operator
puts "Please enter an operator here: "
operator = gets.chomp
#Calculator can only add, substract, multiply or divide
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operator)
  puts "Invalid entry, please enter a valid operator!"
  operator = gets.chomp
end
#I tried several methods on a and b including Integer() and regex but they did not work the way I wanted them to, to just accept numbers and exclude letters or symbols.
puts "Please enter your first number here: "
begin
  a = gets.chomp
  a = Float(a)
rescue
  puts "Error, please enter a number: "
  retry
end


puts "Please enter your second number here: "
begin
  b = gets.chomp
  b = Float(a)
rescue
  puts "Error, please enter a number: "
  retry
end

#handles diving by 0
if operator == "divide" || operator == "/" && b == 0
  puts "Error, you cannot divide by zero. Enter another number: "
  b = gets.chomp.to_f
end

def calculate_answer(operator, a, b)
  if operator == "add" || operator == "+"
    return  result = a.to_f + b.to_f
  elsif operator == "substract" || operator == "-"
    return result = a.to_f - b.to_f
  elsif operator == "multiply" || operator == "*"
    return result = a.to_f * b.to_f
  elsif operator == "divide" || operator == "/"
    return result = a.to_f / b.to_f
  else
    puts "wrong input please try again: "
  end
end

result = calculate_answer(operator, a, b)
puts "Your calculation returns #{result}"
