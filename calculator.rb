# Method for checking if a valid number is entered
# If a valid number is entered it is converted from string
# to integer if it was entered as an integer
# to float if it was entered as a float
def check_number( num )
  if num.to_f != 0 || ["0", "0.0"].include?(num)
    is_float = false
    if num.include? "."
      is_float = true
    end
    if is_float
      as_number = num.to_f
    else
      as_number = num.to_i
    end
    return {number_ok: true, as_number: as_number}
  else
    return {number_ok: false}
  end
end

# Method for addition
def adding( num1, num2 )
  return [num1 + num2, "+"]
end

# Method for subtraction
def subtracting( num1, num2 )
  return [num1 - num2, "-"]
end

# Method for multiplication
def multiplying( num1, num2 )
  return [num1 * num2, "*"]
end

# Method for division
def dividing( num1, num2 )
  return [num1 / num2, "/"]
end

operands = ["add", "+",
  "subtract", "-",
  "multiply", "*",
  "divide", "/"
]

puts "\nThis is a calculator that can handle addition, subtraction, multiplication or division of two numbers\n\n"


# Input
inputs_ok = false
until inputs_ok
  # Entering of operand and numbers
  puts "Please enter your choice of operand."
  puts "You can choose between: "
  puts operands.join(", ")
  print "\nYour choice: "
  operand_input = gets.chomp
  print "Please enter the first number: "
  num1_input = gets.chomp
  print "Please enter the second number: "
  num2_input = gets.chomp

  # Checking operand and numbers
  operand_ok = operands.include?(operand_input)
  num1 = check_number(num1_input)
  num2 = check_number(num2_input)

  # If operand and numbers all are ok, exit the until-loop
  if operand_ok && num1[:number_ok] && num2[:number_ok]
    # Handling of division by zero
    if ["divide", "/"].include?(operand_input) && num2[:as_number] == 0
      puts "\nOps, you are trying to divide #{num1[:as_number]} by zero."
      puts "Please start over.\n\n"
    else
      inputs_ok = true # All ok
    end
  else
    puts "\nOps, something was not entered right."
    puts "Make another try! (Please see to that you enter the right type of operand and that you enter the numbers properly.)\n\n"
  end

end # the until-loop end


# Choice of method depending on the users choice of operand
case operand_input
when "add", "+" then result = adding(num1[:as_number], num2[:as_number])
when "subtract", "-" then result = subtracting(num1[:as_number], num2[:as_number])
when "multiply", "*" then result = multiplying(num1[:as_number], num2[:as_number])
when "divide", "/" then result = dividing(num1[:as_number], num2[:as_number])
end


# Printing the result to the terminal
puts "\nThe result is: #{result[0]}"
puts "#{num1[:as_number]} #{result[1]} #{num2[:as_number]} = #{result[0]}\n\n"
