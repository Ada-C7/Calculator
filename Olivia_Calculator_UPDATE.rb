#get user input

puts "Let's do some math. What kind of math should we do?"

operator = gets.chomp
until ["add", "+", "addition", "plus", "subtract", "subtraction", "-", "multiply", "*", "times", "multiplication", "division", "/", "divide"].include?(operator)
  puts "Uh, yeah. Right. Also, please tell me to add (+), subtract (-)!, multiply, divide, etc..."
  operator = gets.chomp
end

puts "Good job. Enter a number."
num1 = gets.chomp.to_f

until num1 =~ /\A[+-]?\d+(\.[\d]+)?\z/.match(num1)
  puts "Please enter a JUST A NUMBER, Shakespeare."
else puts "Tight."
end

puts "We'll need one more number to do stuff."
num2 = gets.chomp.to_f

until num2 =~ /\A[+-]?\d+(\.[\d]+)?\z/.match(num2)
  puts "You have terrible short-term memory. Sorry. JUST A NUMBER."
else puts "Tight."
end

def calculate(num1, num2, operator)
  case operator
  when "add", "+", "addition", "plus"
    puts (num1 + num2)
  when "minus", + "-", "subtraction"
    puts (num1 - num2)
  when "multiply", "*", "times", "multiplication"
    puts (num1 * num2)
  when "division", "/", "divide"
    puts (num1 / num2)
  else puts "Whatevuh. What even is that?"
  end
end

calculate(num1, num2, operator)
