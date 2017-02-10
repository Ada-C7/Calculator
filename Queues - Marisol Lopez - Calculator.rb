# methods for performing math operation that is chosen by user
# if statement is nested in divide to account for division by 0 possibility

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
  if num_one == 0 || num_two == 0
    return "0.0"
  else
    return num_one / num_two
  end
end

# Asking for user input

puts "Do you want to add (+), subtract (-), multiply (*), or divide (/)?"

operation = gets.chomp.downcase.to_s

#storing number input and checking to see if number is a float

print "Please enter in a number: "
begin
number_one = gets.chomp
number_one = Float(number_one)
rescue
  print "Please enter as a numerical number: "
  retry
end

print "Please enter in a number: "
begin
number_two = gets.chomp
number_two = Float(number_two)
rescue
  print "Please enter as a numerical number: "
  retry
end

# checking to see if operation user input matches and if it does
# displaying the math operation based on user input

case operation
  when "add", "+"
    puts "#{number_one} + #{number_two} = #{add(number_one,number_two)}"
  when "subtract", "-"
    puts "#{number_one} - #{number_two} = #{subtract(number_one,number_two)}"
  when "multiply", "*"
    puts "#{number_one} * #{number_two} = #{multiply(number_one,number_two)}"
  when "divide", "/"
    puts "#{number_one} / #{number_two} = #{divide(number_one,number_two)}"
  end
