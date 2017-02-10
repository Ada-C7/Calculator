
puts "
▄▄·  ▄▄▄· ▄▄▌   ▄▄· ▄• ▄▌▄▄▌   ▄▄▄· ▄▄▄▄▄      ▄▄▄  
▐█ ▌▪▐█ ▀█ ██•  ▐█ ▌▪█▪██▌██•  ▐█ ▀█ •██  ▪     ▀▄ █·
██ ▄▄▄█▀▀█ ██▪  ██ ▄▄█▌▐█▌██▪  ▄█▀▀█  ▐█.▪ ▄█▀▄ ▐▀▀▄
▐███▌▐█ ▪▐▌▐█▌▐▌▐███▌▐█▄█▌▐█▌▐▌▐█ ▪▐▌ ▐█▌·▐█▌.▐▌▐█•█▌
·▀▀▀  ▀  ▀ .▀▀▀ ·▀▀▀  ▀▀▀ .▀▀▀  ▀  ▀  ▀▀▀  ▀█▄▀▪.▀  ▀
"
#define methods
def add(number1, number2)
    solution = number1.to_f + number2.to_f
  return solution
end

def subtract(number1, number2)
  solution = number1.to_f - number2.to_f
  return solution
end

def multiply(number1, number2)
  solution = number1.to_f * number2.to_f
  return solution
end

def divide(number1, number2)
  solution = number1.to_f / number2.to_f
  return solution
end

#retrieve user input and validate operation
have_operation = false
until have_operation
  puts "Would you like to add, subtract, multiply, or divide?"
  operation = gets.chomp.downcase

  #validate operation
  method = ""
    if
      operation == "add" || operation == "addition" || operation == "+"
      method = "add"
      have_operation = true
    elsif
      operation == "subtract" || operation == "subtraction"  || operation == "-"
      method = "subtract"
      have_operation = true
    elsif
      operation == "multiply" || operation == "multiplication" || operation == "*"
      operation == "x"
      method = "multiply"
      have_operation = true
    elsif
      operation == "divide" || operation == "division" ||
      operation == "/" || operation == "÷"
      method = "divide"
      have_operation = true
    else
      have_operation = false
      puts "hmm that's not right, lets try that again."
    end
  end

#retrieve user input and validate values
tested_num_1 = ""
tested_num_2 = ""
have_values = false

while !have_values
  print "First number:"
  num_1 = gets.chomp
  tested_num_1 = num_1.match(/\d(?![a-zA-Z])/)

  print  "Second Number:"
  num_2 = gets.chomp
  tested_num_2 = num_2.match(/\d(?![a-zA-Z])/)

  if tested_num_1 && tested_num_2 &&
    method == "add" || method == "subtract" || method == "multiply" || method == "divide"
    num_1 = tested_num_1.to_s.to_f
    num_2 = tested_num_2.to_s.to_f
    have_values = true
    if method == "divide" && num_2 == 0
      have_values = false
      puts "You cannot divide by 0. Please enter your numbers again\n"
    elsif method == "divide" && num_2 !=0
      num_1 = tested_num_1.to_s
      num_2 = tested_num_2.to_s
      have_values = true
    end

  elsif !tested_num_1
    print "Your first entry must be a number. Enter both  values again.\n"
  elsif !tested_num_2
    print "Your second entry must be a number.Enter both values again.\n"
    have_values = false
  end
end




#do the math
puts "Hrmmmm, let me think"
if method == "add"
  puts "The answer is: #{add(num_1, num_2)}"
elsif method == "subtract"
  puts "The answer is: #{subtract(num_1, num_2)}"
elsif method == "multiply"
  puts "The answer is: #{multiply(num_1, num_2)}"
elsif method == "divide"
  puts "The answer is: #{divide(num_1, num_2)}"
end
