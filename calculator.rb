# Baseline: The program should ask the user for an operation (string or numeric symbol) and two numbers.
#
# Primary Requirements:
# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.
# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.

# multiply two numbers and return the answer
def multiply(num1, num2)
  answer = num1 * num2
  return answer
end

# add two numbers and return the answer
def add(num1, num2)
  answer = num1 + num2
  return answer
end

# subtract two numbers and return the answer
def subtract(num1, num2)
  answer = num1 - num2
  return answer
end

# divide two numbers and return the answer
def divide(num1, num2)
  answer = (num1 / num2).round(5)
  return answer
end

# divide two numbers and return the answer
def modulus(num1, num2)
  answer = num1 % num2
  return answer
end

# divide two numbers and return the answer
def power(num1, num2)
  answer = num1 ** num2
  return answer
end

# get the desired operation from the user
def get_operation

  print "\nWhat operation would you like to perform? "
  operation = gets.chomp

  possible_operations = ["add", "+", "plus", "subtract", "-", "minus", "divide", "/", "multiply", "*", "modulus", "%", "remainder", "power", "^"]

  until possible_operations.include?(operation)
    print "\nSorry, what do you want to do? "
    operation = gets.chomp
  end

  return operation

end

def get_number_inputs(operation)

  which_numbers = ["first", "second"] # used to prompt the user for their input
  numbers = []

  which_numbers.each do |num|

    # get the number from the user
    # print "\nWhat is your #{num} number? (optionally, enter an operation in parentheses): "
    print "\nWhat is your #{num} number? : " # first use num to print the "first" or "second"
    num = gets.chomp # then reassign it to the inputted number
    num = num.gsub(" ", "") # remove any spaces

    # they are what they're named :)
    # has_left_parens = num.include?("(")
    # has_right_parens = num.include?(")")
    # has_both_parens = has_left_parens && has_right_parens
    # has_one_parens = (has_left_parens || has_right_parens) && !has_both_parens
    # has_no_parens = !has_both_parens

    # # make sure they enter a number or other acceptible character!
    # while !num.match(/^[\(\)\*\^%\+-\/\.0-9]+$/) || has_one_parens == true
    #   print "\nPlease enter a valid number: "
    #   num = gets.chomp
    # end
    #
    # # check to make sure it's only numbers
    # while !num.match(/^[.0-9]+$/) && has_no_parens == true # if no parens but weird chars going on
    #   print "\nPlease try again."
    #   num = gets.chomp
    # end
    #
    # if has_both_parens == true # if the user used parentheses
    #
    #   without_parens = num.chop.reverse.chop.reverse # remove the parentheses
    #
    #   # create empty variables
    #   first_num = ""
    #   second_num = ""
    #   parens_operator = ""
    #
    #   # iterate through the resulting string by characters
    #   without_parens.split("").each do |character|
    #     possible_operators = ["*", "+", "-", "/", "^", "%"] # here are the things the operator could be
    #     if !possible_operators.include?(character) && parens_operator == ""
    #       first_num = first_num + character # while operator is empty, first characters are the first number
    #     end
    #     if possible_operators.include?(character) # here's the operator
    #       parens_operator = character
    #     end
    #     if parens_operator != "" && character != parens_operator # the remaining characters are the second number
    #       second_num = second_num + character
    #     end
    #   end
    #
    #   # make sure they're not dividing with a zero!
    #   if parens_operator == "/"
    #     while first_num == 0 || second_num == 0
    #       puts "You can't divide something by zero. Please make another choice."
    #       get_number_inputs(operation) # restart the number input process
    #     end
    #   end
    #
    #   if first_num.include?(".") || second_num.include?(".") || parens_operator == "/" # if there's a decimal point or you're dividing
    #     first_num = first_num.to_f # if so, make it a float
    #     second_num = second_num.to_f
    #   else
    #     first_num = first_num.to_i
    #     second_num = second_num.to_i # otherwise make it an integer
    #   end
    #   parens_numbers = [first_num, second_num] # make an array to send to the calculator
    #   parens_result = perform_operation(parens_operator, operator, parens_numbers) # get an answer
    #   numbers << parens_result # send that answer to the numbers array as one of your numbers
    #
    # elsif has_no_parens == true # we'll treat it like a normal number input

      # make sure they're not dividing with a zero!
      if operation == "divide" || operation == "/"
        while num == "0"
          print "\nYou can't divide something by zero. Please pick a different number! "
          num = gets.chomp
        end
      end

      # check to see if the number has a decimal place (or might down the line)
      if num.include?(".") || operation == "divide" || operation == "/" #
        num = num.to_f # if so, make it a float
      else
        num = num.to_i # otherwise make it an integer
      end

      numbers << num # saving the user input

    # else
    #   puts "What's going on???" # something went terribly wrong
    # end

  end

  return numbers

end
#
# def show_final_result(first, operator, second, answer)
#
#   puts "\nYour calculation: #{first} #{operator} #{second} = #{answer}"
#   puts "\n"
#
#   user_prompt_to_continue # ask user if they want to continue
#
# end

def perform_operation(operation, numbers)

  first = numbers[0].to_i
  second = numbers[1].to_i

  case operation
  when "add", "+", "plus"
    answer = add(first, second)
    operator = "+"
  when "subtract", "-", "minus"
    answer = subtract(first, second)
    operator = "-"
  when "divide", "/"
    answer = divide(first, second)
    operator = "/"
  when "multiply", "*"
    answer = multiply(first, second)
    operator = "*"
  when "modulus", "%", "remainder"
    answer = modulus(first,second)
    operator = "%"
  when "power", "^"
    answer = power(first,second)
    operator = "^"
  else
    puts "\nSomething unexpected happened here!"
  end

  puts "\nYour calculation: #{first} #{operator} #{second} = #{answer}" # displays the answer
  puts "\n"

  user_prompt_to_continue # ask user if they want to continue

end


# call this method to start the calculator
def user_prompt_to_continue

  # ask the user if they want to do another operation
  print "Would you like to perform another operation? (y/n) "
  continue = gets.chomp.downcase

  case continue
  when "y", "yes"
    run_calculator # restart the method to do another calculation
  when "n", "no"
    puts "Goodbye!\n\n"
    exit # quit
  else # prompt until yes or no are entered
    puts "I didn't get that."
    user_prompt_to_continue # restart the prompt
  end
end

# this is where each new calculation takes place
def run_calculator

  operation = ""
  operation = get_operation # get the operation input

  numbers = [] # clear out the previous numbers
  numbers = get_number_inputs(operation) # get the number inputs

  answer = ""
  answer = perform_operation(operation, numbers) # actually do the math

end

def welcome_message

  # welcome message -- user sees this first
  puts "\nWelcome to the calculator."
  puts "This calculator can add (+), subtract (-), multiply (*), "
  puts "divide (/), use modulus (%), or raise to the power of (^)."

  run_calculator # start the calculator

end

welcome_message
