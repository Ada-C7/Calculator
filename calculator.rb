# CALCULATOR EXCERCISE for homework on 02.09.2017
# Submitted by Tamiko Terada

# METHOD to change a string into a float or integer
def numberfy(input_string)
  if input_string.include?(".")
    input_string.to_f
  else input_string.to_i
  end
end

# METHOD to validate user operator
def valid_operator(user_operator)
  possible_operators = [ "add", "+", "subtract", "-", "multiply", "x", "*", "divide", "/" ]
  possible_operators.include?(user_operator)
end

# METHOD to calculate values based on allowed operators
def calculator_method(operator, number_1, number_2)
  case operator
  when "add"
    total = number_1 + number_2
  when "+"
    total = number_1 + number_2
  when "subtract"
    total = number_1 - number_2
  when "-"
    total = number_1 - number_2
  when "multiply"
    total = number_1 * number_2
  when "x"
    total = number_1 * number_2
  when "*"
    total = number_1 * number_2
  when "divide"
    total = number_1.to_f / number_2.to_f
  when "/"
    total = number_1.to_f / number_2.to_f
  end
  return total
end

# METHOD to check if a string is a valid number
def can_be_number(string)
  forced_as_f = string.to_f # force string to be a float
  forced_as_i = string.to_i # force string to be an integer
  return string == forced_as_f.to_s || string == forced_as_i.to_s # see if either of the forced strings equal the original
end

# header
puts "WELCOME TO CALCULATOR!\n"

# loop for user to terminate the program with "n"
keep_going = "y"
until keep_going == "n" do
  
  puts " | Display       = | 0 "
  print " | Enter amount.   | "
  number_1 = gets.chomp
  until can_be_number(number_1) do
    print "~ Enter valid number ~ "
    number_1 = gets.chomp
  end
  number_1 = numberfy(number_1)

  print " | Enter operator. | "
  operator = gets.chomp
  until valid_operator(operator) do
    print "~ Need a valid operator ~ "
    operator = gets.chomp
  end

  print " | Enter amount.   | "
  number_2 = gets.chomp
  until can_be_number(number_2) do
    print "~ Need a valid number ~ "
    number_2 = gets.chomp
  end
  number_2 = numberfy(number_2)

  puts "Calculating......... #{number_1} #{operator} #{number_2}"
  calculated_total = calculator_method(operator, number_1, number_2)

  if calculated_total % 1 == 0
    puts " | Display       = | #{calculated_total.to_i}"
  else
    puts " | Display       = | #{calculated_total}"
  end

  print "Continue (y/n)? "
  keep_going = gets.chomp.downcase
  until keep_going == "y" || keep_going == "n" do
    print "Please enter 'y' or 'n'!"
    keep_going = gets.chomp.downcase
  end
end

# USER ENTERS CALCULATION ON ONE LINE
# puts "Enter your expression below."
# print " | display = | "
# expression = gets.chomp
# exp_array = expression.gsub(/\s+/m, ' ').strip.split(" ")
# until can_be_number(exp_array[0]) && can_be_number(exp_array[-1]) && valid_operator(exp_array[1]) do
#   expression = gets.chomp
#   exp_array = expression.gsub(/\s+/m, ' ').strip.split(" ")
#   exp_array[0] = numberfy(exp_array[0])
#   exp_array[-1] = numberfy(exp_array[-1])
# end
#
# until (can_be_number("#{exp_array[0]}")) && (can_be_number("#{exp_array[-1]}")) && (valid_operator(exp_array[1]) do
#   print "Enter a valid expression with spaces! > "
#   expression = gets.chomp
#   exp_array = expression.gsub(/\s+/m, ' ').strip.split(" ")
#   exp_array[0] = numberfy(exp_array[0])
#   exp_array[-1] = numberfy(exp_array[-1])
# end
