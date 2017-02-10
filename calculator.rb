puts "Hello there! "
puts "What operation do you want? (Type in string or numeric value please) "
command = gets.chomp.downcase

puts "Type in the first number: "
num_1 = gets.to_i
# if num_1.is_a?String
#   puts "That is not a number, please start over"
#   exit
# end

#I am stuck here. I was trying to double check that the user input is indeed a number, but noticed that gets.to_i converts input into integers

puts "Type in the second number: "
num_2 = gets.to_i
# if !(num_2.is_a?Numeric)
#   puts "That is not a number, please start over"
# end

adding = ["add", "+", "addition"]
multiplying =  ["multiply", "*", "multiplication"]
subtracting = ["subtract", "subtraction", "-"]
dividing = ["divide", "/", "division"]

#Wondering if there is a way to combine these arrays into the case/when methods

case command
when "add", "+", "addition"
  puts "So we are adding numbers.."
when "multiply", "*", "times", "multiplication"
  puts "We are multiplying..."
when "subtract", "subtraction", "-"
  puts "We are subtracting.."
when "divide", "division", "/"
  puts "We are dividing.."
else
  puts "This is unexpected"
end

def add(num_one, num_two)
  return num_one + num_two
end

def multiply(num_one, num_two)
  return num_one * num_two
end

def subtract(num_one, num_two)
  return num_one - num_two
end

def divide(num_one, num_two)
  return num_one / num_two
end

if adding.include?(command)
  result = add(num_1, num_2)
  puts "Here is the result: #{result}."
elsif multiplying.include?(command)
  result = multiply(num_1, num_2)
  puts "Here is the result: #{result}."
elsif subtracting.include?(command)
  result = subtract(num_1, num_2)
  puts "Here is the result: #{result}."
elsif dividing.include?(command)
  unless num_2 == 0
    result = divide(num_1, num_2)
    puts "Here is the result: #{result}."
  else
    puts "This does not work. Please start over."
  end
else
  puts "This is unexpected!"
end
