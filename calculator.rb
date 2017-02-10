#array of all of the possible names for the functions that this calculator does
calculator_functions = ["add", "+", "plus","addition","subtract", "-", "minus","less","multiply", "*", "times","divide", "/", "division","exponent", "sqrt", "square root", "^", "**","modulo", "%", "remainder"]


#get user math operator and check that it is one of the supported functions
puts "Welcome to the calculator app."
puts "Which math operation do you want to use: "
operation = gets.chomp
until calculator_functions.include?(operation)
    puts "This calculator does not support that function. Please enter another operation."
    operation = gets.chomp
end


#tried to make a method to check user input for integers here, but made a mess of it
#trouble with scope here, I believe - getting the check variable to be true when conditions are met
# check = false
# def check_number (user_input)
#     numbered = user_input.to_i
#     if user_input == numbered.to_s
#         check = true
#         puts "it's a number"
#     else
#         puts "not a number"
#     end
# end


#get user number and check that entered a number
# print "Number 1: "
# original = gets.chomp
# check_number(original)
# puts "the value of check is #{check}"
# until check == true
#     print "Please enter a valid number: "
#     original = gets.chomp
#     check_number(original)
# end

print "Number 1: "
num1 = gets.chomp
num_1 = num1.to_i
while num1 != num_1.to_s
    print "Please enter a valid number: "
    num1 = gets.chomp
    num_1 = num1.to_i
end

print "Number 2: "
num2 = gets.chomp
num_2 = num2.to_i
while num2 != num_2.to_s
    print "Please enter a valid number: "
    num2 = gets.chomp
    num_2 = num2.to_i
end

# check answer with case
# wrap it in a method
# this works, it's a little weird that if try to divide by zero get the error message and still the your number is blank message
def math_it(num1, num2, operation, operator)
    case operation
    when "add", "+", "plus","addition"
        answer = num1 + num2
        $operator = "+"
    when "subtract", "-", "minus","less"
        answer = num1 - num2
        $operator = "-"
    when "multiply", "*", "times"
        answer = num1 * num2
        $operator = "*"
    when "divide", "/", "division"
        if num2 == 0
            puts "Division Error"
        else
        answer = num1/num2
        $operator = "/"
        end
    when "exponent", "sqrt", "square root", "^", "**"
        answer = num1 ** num2
        $operator = "^"
    when "modulo", "%", "remainder"
        answer = num1 % num2
        $operator = "%"
    end
    puts "Your answer is #{answer}"
    puts "#{num1} #{$operator} #{num2} = #{answer}"
end
#
#call the method
math_it(num_1, num_2, operation, $operator)
