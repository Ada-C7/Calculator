puts "".center(60, "-")
puts "<<<-CALCULATOR->>>".center(60, "-")
puts "".center(60, "-")
#hash stores operators and word descriptions as key-value pairs
operators = {
  "add" => "+",
  "subtract" => "-",
  "multiply" => "*",
  "divide" => "/",
  "modulus" => "%",
  "exponent" => "**"
}

#asks user to pick operator
print "\nWhat arithmetic do you want to do? You can choose from:
\n\t add (+)
\t subtract (-)
\t multiply (*)
\t divide (/)
\t modulus (%)
\t exponent (**)\n
Enter your selection: "
user_choice = gets.chomp

#makes sure user picks a legit operator
until operators.has_key?(user_choice) || operators.has_value?(user_choice) do
  puts "That's not a valid operation. Try again: "
  user_choice = gets.chomp
end

#set the operator
if operators.has_key?(user_choice)
  operator = operators[user_choice]
else
  operator = user_choice
end


#method to get number from user
def get_number
  valid_number = false
  until valid_number do
    print "Please enter a number: "
    number = gets.chomp
    if number.to_i != 0 || number == "0"
      valid_number = true
    else
      puts "Invalid entry. Try again."
    end
  end
  return number
end

#run method get_number twice to get two numbers
puts "\nNow let's get two numbers and do some calculating."
first = get_number

puts "Moving on to the second number"
second = get_number

#method to perform the selected operation on the two numbers and return an expression and the result
def operate_numbers(num_one, num_two, operation)
  if operation == "/"
    if num_two.to_i == 0
      result = "undefined"
    else
      result = num_one.to_f.send(operation, num_two.to_f)
    end
  else
    result = num_one.to_i.send(operation, num_two.to_i)
  end
  puts "\n#{num_one} #{operation} #{num_two} = #{result}\n"
  puts "thanks for calculating. good-bye\n\n"
end

# run method
operate_numbers(first, second, operator)
