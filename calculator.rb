
def add (a, b)
  puts "#{a} + #{b} = #{a + b}"
end

def substract (a, b)
    puts "#{a} - #{b} = #{a - b}"
end

def multiply (a, b)
  puts "#{a} * #{b} = #{a * b}"
end

def divide (a, b)
  if b == 0
    puts "Error, you cannot divide by 0"
  else
      puts "#{a} / #{b} = #{a / b}"
  end
end

def exponent (a, b)
    puts "#{a} ^ #{b} = #{a ** b}"
end

def modulo (a, b)
    puts "#{a} % #{b} = #{a % b}"
end

# Checks if user enters number:
# If user enter string, than method to_i will return 0
def input_correct?(str)
  if (str == "0") || str.to_i != 0
    return true
  else
    return false
  end
end

# Ask user enter first and second number for operation:
def prompt_input(n)
  stop = false # loop stops when user enters number
  until stop do
    puts "Enter #{n} number for your operation:"
    input = gets.chomp
    if input_correct?(input)
      input = input.to_f #
      stop = true
    end
  end
  return input
end

stop_program = false
while stop_program != true # loop executes again if user want to calculate something else
  puts "What operation would you like to do?
  (Please, enter:
          \"add\" or \"+\" for addition;
          \"substract\" or \"-\" for substraction;
          \"multiply\" or \"*\" for multiply;
          \"divide\" or \"/\" for division;
          \"exponent\" for exponify;
          \"modulo\" for division by modulo)"
  answer = gets.chomp
  until ["add", "+", "subtract", "-", "multiply",
     "*", "divide", "/", "exponent", "modulo"].include?(answer)
    puts "Please, enter word correctly!"
    answer = gets.chomp
  end

  x = prompt_input("first")
  y = prompt_input("second")

  case answer
    when "add", "+"
      add(x, y)
    when "substract", "-"
      substract(x, y)
    when "multiply", "*"
      multiply(x, y)
    when "divide", "/"
      divide(x, y)
    when "exponent"
      exponent(x, y)
    when "modulo"
      modulo(x, y)
  end

  puts "Would you like to calculate something again?(y/n)"
  result = gets.chomp
  if result == "n"
    stop_program = true
  end
end # End of program
