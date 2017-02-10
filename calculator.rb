# calculate simple arithmetic with user input

# define a method called solution (I know comments are not supposed to have implementation...)
def solution(operator, number_1, number_2)
  case operator
    when "add", "+", "plus", "addition"
      puts number_1 + number_2
    when "minus", "-", "subtract"
      puts number_1 - number_2
    when "multiply", "*", "times"
      puts number_1 * number_2
    when "divide", "/", "division"
      if number_2 == 0
        puts "Cannot divide by zero!"
      else
        puts number_1 / number_2
      end
    else
      puts "Please follow the instructions!"
  end
end

  # welcome message
  puts "Welcome to the calculator program!"

  # get user inputs
  print "Which operation? "
  your_operator = gets.chomp.downcase
  print "Please enter a number: "
  your_number_1 = gets.chomp.to_i
  print "Please enter another number: "
  your_number_2 = gets.chomp.to_i

  # call arithmetic method
  solution(your_operator, your_number_1, your_number_2)
