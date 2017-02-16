puts "type any number"
num_1 = gets.chomp
until num_1.to_i.to_s == num_1 || num_1.to_f.to_s == num_1
  puts "this is not a number"
  num_1 = gets.chomp
end
num_1 = num_1.to_f

puts "type another number"
num_2 = gets.chomp
until num_2.to_i.to_s == num_2 || num_2.to_f.to_s == num_2
  puts "this is not a number"
  num_2 = gets.chomp
end
num_2 = num_2.to_f

puts "What kind of operation would you like to aply to these numbers?"
puts "The options are add (+), subtract (-), multiply (*) and divide (/)."

operation = gets.chomp.downcase

until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operation)
  puts "sorry! that is not an option! try it again."
  operation = gets.chomp.downcase
end


def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def multiply(num_1, num_2)
  num_1 * num_2
end

def divide(num_1, num_2)
  num_1 / num_2
end

if operation == "add" || operation == "+"
  puts "#{num_1} + #{num_2} =  #{add(num_1, num_2)} "
elsif operation == "subtract" || operation == "-"
  puts "#{num_1} - #{num_2} =  #{subtract(num_1, num_2)} "
elsif operation == "multiply" || operation == "*"
  puts "#{num_1} * #{num_2} =  #{multiply(num_1, num_2)} "
elsif operation == "divide" || operation == "/"
  puts "#{num_1} / #{num_2} =  #{divide(num_1, num_2)} "
end
