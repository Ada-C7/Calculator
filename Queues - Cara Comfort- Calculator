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
  if num_two == 0
    return "#{num_one} is not divisible by 0"
  else
    return num_one / num_two
  end
end

def convert_to_num(num)
  until num.to_f.to_s == num || num.to_i.to_s == num
    print "Please input a number: "
    num = gets.chomp
  end
  
  if num.include? "."
    return num.to_f
  else
    return num.to_i
  end
end


print "\nWhat operation would you like to perform? "
operation = gets.chomp
possible_operators = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"]
until possible_operators.include?(operation)
  print "Please tell me to add (+), subtract (-), multiply (*) or divide (/): "
  operation = gets.chomp
end

print "\nWhat is your first number? "
num_one = convert_to_num(gets.chomp)

print "\nWhat is your second number? "
num_two = convert_to_num(gets.chomp)

case operation
when "add", "+"
  puts add(num_one, num_two)
when "subtract", "-"
  puts subtract(num_one, num_two)
when "multiply", "*"
  puts multiply(num_one, num_two)
when "divide", "/"
  puts divide(num_one, num_two)
end
