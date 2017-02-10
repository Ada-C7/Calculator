#gets type of math user wants to perform
puts "\nLet's do some simple Math!"
print "What would you like me to do? "
command = gets.chomp.downcase

possible_commands = ["addition", "add", "+", "plus", "subtraction", "minus", "-", "subtract", "multiply", "times", "*", "x", "multiplication" , "division", "divide", "/"]

#makes sure user entered a valid command
until possible_commands.include?(command)
  puts "That's not a valid math equation I can do!"
  print "Please enter something such as add, +, subtraction, etc. "
  command = gets.chomp
end

#gets two numbers, makes sure they are numbers
print "The first number? "
first_input = gets.chomp
until first_input =~ /\d/
  puts "Very amusing, please enter a number: "
  first_input = gets.chomp
end
first_input = first_input.to_f

print   "And the second number? "
second_input = gets.chomp
until second_input =~ /\d/
  puts "Very amusing, please enter a number: "
  second_input = gets.chomp
end
second_input = second_input.to_f

#defines the methods this calculator can use!
def calculate(first_number, second_number, type)
  if type == "+"
    puts first_number + second_number
  elsif type == "-"
    puts first_number - second_number
  elsif type == "*"
    puts first_number * second_number
  elsif type == "/"
    puts first_number / second_number
  end
end

#runs the method based on the user's command,
#puts out answer
case command
  when "addition", "add", "+", "plus"
    calculate(first_input, second_input, "+")
  when "subtraction", "minus", "-", "subtract"
    calculate(first_input, second_input, "-")
  when "multiply", "times", "*", "x", "multiplication"
    calculate(first_input, second_input, "*")
  when "division", "divide", "/"
    calculate(first_input, second_input, "/")
end
