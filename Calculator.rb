# checks whether user wrote correct operation
def math()
  operations = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "raise", "^", "modulo", "%"]
  symbol = gets.chomp
  until operations.include?(symbol)
    print "That's not a valid entry, please try again: "
    symbol = gets.chomp
  end
  return symbol
end

# beginning of the code
print "What kind of math would you like to perform? "
command = math()

# checks whether user wrote a number
def read_number(prompt)
  error_msg_1 = "Uh oh, invalid value. Please try again."
  number = nil
  while number == nil
    print prompt
    user_input = gets.chomp
    if user_input.include?(".")
      # Integer() will convert input to a number or it will throw an error
      # that will be caught by the rescue clause if input is not a number
      # rescue prints error message and continues execution of the code
      number = Float(user_input) rescue puts(error_msg_1)
    else
      number = Integer(user_input) rescue puts(error_msg_1)
    end
  end
  return number
end

first_number = read_number("What is the first number? ")

second_number = read_number("What is the second number? ")

# performs calculation based on user's input
if command == "add" || command == "+"
  result = first_number + second_number
  command = "+"
elsif command == "substract" || command == "-"
  result = first_number - second_number
  command = "-"
elsif command == "multiply" || command == "*"
  result = first_number * second_number
  command = "*"
elsif command == "divide" || command == "/"
  # catches the division by 0 that throws an error
  # begin contains code that potentially may throw an error
  begin
    result = first_number / second_number
    # rescue catches and handles error
    # prints a message
  rescue
    puts("Oh no. We cannot divide by 0.")
    # terminates the program
    exit
  end
elsif command == "raise" || command == "^"
  result = first_number ** second_number
  command = "^"
elsif command == "modulo" || command == "%"
  command = "%"
  begin
    result = first_number % second_number
  rescue
    puts("Oh no. We cannot divide by 0.")
    exit
  end
  command = "%"
end

# prints the result based on the user input
puts "#{first_number} #{command} #{second_number} = #{result}"
