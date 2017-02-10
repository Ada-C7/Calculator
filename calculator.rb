# gets and saves number from user
def gets_valid_num
  num = gets.chomp

  # forces the user to input a number
  while num.tr("0-9.-","") != "" || num == ""
    print "Please give me a valid number: "
    num = gets.chomp
  end
  return num.to_f
end

puts

# gets math operation from user
print "What type of math would you like to do? "
operation = gets.chomp.downcase

operations = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponentiate", "^", "modulo", "%"]

#forces user to enter an operator from 'operations'
until operations.include?(operation)
  print "Please give me a valid operation: "
  operation = gets.chomp.downcase
end

puts
print "Give me the first number: "
num1 = gets_valid_num #get first number input

puts
print "Give me the second number: "
num2 = gets_valid_num #get second number input

# do math depending on the given operator
case operation
  when "add", "+"
    answer = num1 + num2 #calculate the answer
    operator = "+" #store a string version of the operator
  when "subtract", "-"
    answer = num1 - num2
    operator = "-"
  when "multiply", "*"
    answer = num1 * num2
    operator = "*"
  when "divide", "/"
    if num2 == 0 # if we try to divide by zero
      answer = "undefined" # the answer will be undefined
    else
      answer = num1 / num2
    end
    operator = "/"
  when "exponentiate", "^"
    answer = num1 ** num2
    operator = "^"
  when "modulo", "%"
    answer = num1 % num2
    operator = "%"
end

# if a number's float equals its integer,
# save the integer version for displaying purposes.
if answer == answer.to_i
  answer = answer.to_i
end

if num1 == num1.to_i
  num1 = num1.to_i
end

if num2 == num2.to_i
  num2 = num2.to_i
end

puts
puts "MATH SAYS:"

if operator == "^" # display exponentiation without spaces btwn nums
  puts "#{num1}#{operator}#{num2} = #{answer}"
else # display all other calculations
  puts "#{num1} #{operator} #{num2} = #{answer}"
end
