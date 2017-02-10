
# The program should ask the user for an operation (string or numeric symbol) and two numbers.


puts "Hey! Let's do some math!"
print "Enter the first number: "
first_number = gets.chomp
has_first_number = false #attempted to use these variables and the below loop to ensure the inputs are numbers
#has_second_number = false


#checks for erroneous inputs
#this doesn't work exactly as intended. It will catch if the first input  is not a number but will loop "Oops! Enter the First Number: " x times before moving on to the next block of code. (x = length of string ). The end of the loop does not veryify the the input contains a number

#i attempted using a rang here, and went into a rabbit hole of regular expressions *regex* and only confused myself more.
#I believe im overlooking a obvious/simple solution
unless has_first_number == true
  first_number.length.times do |pos|
    if first_number[pos] == "0" || first_number[pos].to_i != 0
      has_first_number = true
    end
    if has_first_number == false
      print "Oops! That is not a valid number. Enter the first number: "
      first_number = gets.chomp
    end
  end
end

#now that first_number is verified to be a number, this changes the class from string to integer
first_number = first_number.to_i

# first_number = first_number.to_i
# else
#   puts "#{first_number} is not a valid number"
  # while first_number != /^d{0,9}$/
  #   puts "#{first_number} is not a valid number. Please enter the first number: "
  # first_number = gets.chomp
# end

#accepts equation operator
print "Would you like to add, subtract, multiply or divide? "
operator = gets.chomp

#accepts second number #because i could not get the erroneous number test to work properly above, i did not use it down here. If user inputs "clown", "clown" = 0
print "enter your second number: "
second_number = gets.chomp.to_i



# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.

#define operators

# creating addtion method
def plus(num_one, num_two)
  return num_one + num_two
end

#substraction method
def minus(num_one, num_two)
  return num_one - num_two
end

#multiplication method
def multiplied_by (num_one, num_two)
  return num_one * num_two
end

#division method
def divided_by (num_one, num_two)
  return num_one / num_two
end


# The program should have support for these four operations: addition, subtraction, multiplication, and division.
# The program should accept both the name (add) and the symbol (+) for each possible operation.


case operator

  # accepts either name or symbol for addtion, subtraction, multiplication, and division.
  #prints equation and solution
  when "add", "addition", "+"
    puts "#{first_number} + #{second_number} = #{plus(first_number, second_number)}"
  when "subtract", "subtraction", "-"
    puts "#{first_number} - #{second_number} = #{minus(first_number, second_number)}"
  when "multiply", "multiplication", "*"
    puts "#{first_number} * #{second_number} = #{multiplied_by(first_number, second_number)}"
  when "divide", "division", "/"
    if second_number == 0
      puts "Silly, can't divide by Zero!"
    else
      puts "#{first_number} / #{second_number} = #{divided_by(first_number, second_number)}"
    end
  else
    puts "something is not right"
end
