# user inputs the type of operation
def get_op
  puts "\nWhat operation would you like to perform? "
  print "You may + (add), - (subtract), * (multiply), or /  (divide): "
  user_op = gets.chomp

  # downcase words (downcasing symbols produces error)
  if user_op.scan(/\w/).length == user_op.length
    user_op.downcase!
  end

  # validate user input
  until ["add", "subtract","multiply", "divide", "+","-", "/", "*"].include? (user_op)
    print "Invalid input: Please enter a valid operation (+, -, /, *): "
    user_op = gets.chomp
  end

  return user_op
end

# check whether only numbers are entered
def check_number(num)
  until num.to_i.to_s == num || num.to_f.to_s ==  num
    puts "That is not a number.  Please try again!"
    print "Please enter a number: "
    num = gets.chomp
  end
  return num.to_f
end


# input two numbers into an array
def get_numbers
  num = Array.new(2)
  2.times do |iter|
    print "Enter ##{iter + 1}: "
    num[iter] = check_number(gets.chomp)
  end
  return num
end


# calculate the specified operation on the two numbers and return output
def do_calc(op, numbers)
  case op
  when "+", "add"
    puts "#{numbers[0]} + #{numbers[1]} = #{numbers.inject(:+)}"
  when "-", "subtract"
    puts "#{numbers[0]} - #{numbers[1]} = #{numbers.inject(:-)}"
  when "*","multiply"
    puts "#{numbers[0]} * #{numbers[1]} = #{numbers.inject(:*)}"
  when "/", "divide"
    print "#{numbers[0]} / #{numbers[1]} = "
    if numbers[1] != 0
      puts "#{numbers.inject(:/)}"
    elsif numbers[0] < 0
      puts "NEGATIVE INFINITY"
    elsif numbers[0] > 0
      puts "INFINITY"
    else
      puts "UNDEFINED"
    end
  end
end
# I let the user do multiple calculations because otherwise using methods is silly
print "Would you like to use the calculator (y/n)? "
use_calc = gets.chomp
#gets.chomp.downcase

while use_calc == "y"
  operation = get_op

  puts "Enter two numbers that you would like to #{operation}? "
  user_num = get_numbers

  do_calc(operation, user_num)
  print "Would you like to do another calculation? "
  use_calc = gets.chomp
end
