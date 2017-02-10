
#The divison_by_zero? method takes in two arguments and checks for division by zero by looking at the operator and second number - if both are / and 0
#the method will return true, otherwise it will return nil
def division_by_zero?(operator, num2)
  return true if operator == :/ && num2 == 0
end

#The calcualte method takes in 3 arguments: num1, operator, num2
#first it sends opeartion and num2 to the division_by_zero? method
#if that method returns true - an string stating there is a divison by zero error is returned,
#else the send method is used to calcuate the math problem
#The send method will take in 2+ arguments - first a symbol of the method you want to call, and than any objects
#from ruby documentation: the send method "invokes the method identified by symbol(in this case a math operation),
#passing it any arguments specified." the result of this will be returned
def calculate(num1, operator, num2)
  division_by_zero?(operator, num2) == true ? "ERROR DIV BY ZERO" : num1.send(operator, num2)
end

#The okay_operator? method will check the users input to make sure it is valid and will return the apporiate opeartor as a symbol
def okay_operator?(operator)
  if operator == "+" || operator == "add"
    operator = :+
  elsif operator == "-" || operator == "subtract" || operator == "minus"
    operator = :-
  elsif operator == "*" || operator == "times" || operator == "multiply"
    operator = :*
  elsif operator == "/" || operator == "divide"
    operator = :/
  elsif operator == "^" || operator == "power" || operator == "exponent"
    operator = :**
  else
    puts "That is not a valid operator"
  end
end

#The get_operator method prompts the user for an operator and will only accept certain inputs
#to test inputs, the okay_opeartion? is called and passed the input -
#if that method returns true the operator is returned as a symbol
def get_operator()
  operator = ""
  until [:+, :-, :*, :/, :**, :%].include?(operator) == true
    print "What operation would you like to perform: \nadd(+), subtract(-), multiply(*), divide(/), or power(^): "
    operator = okay_operator?(gets.chomp)
  end
  return operator
end

#Test_for_number method takes in one argument and returns true if the argument is a number and false if not.
#To test for a number the Float method from the Kernal module is used
#The float method expects to only be given numbers and return
#the argument as a float. If you pass a non-number to Float, it will return a error - this why you use resuce false
#instead of an error breaking your program, false will be returned
def test_for_number(num)
  is_input_number = Float(num) != nil rescue false
end

#The get_number method prompts a user for a number, passes the input to the test_for number method,
#and when the test_for_number method returns true, returns the number as a float,
#I have choosen to return the number as a float so that any real numbers can be a possible total
def get_number()
  num = ""
  until test_for_number(num) == true
    print "Enter a number: "
    num = gets.chomp
    test_for_number(num)
  end
  return num.to_f
end

#The calculator method will return a string of an one step math problem (one operation between two numbers)
#It does this by setting variables num1 and num2 to to the get_number method, and variable operator to the get_operator method
#and a total variable is set to the calcuate method.
#Last the string of the math problem is formed 
def calculator()
  num1 = get_number()
  operator = get_operator()
  num2 = get_number()
  total = calculate(num1, operator, num2)
  operator = "^" if operator == :**
  return "#{num1} #{operator} #{num2} = #{total}"
end

puts "Welcome to Cyn's Calculator: \nHere you can add, subtract, multiply, divide, or exponentiate two numbers."
puts "-" * 60
puts calculator
