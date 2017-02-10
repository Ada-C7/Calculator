
def calculate_answer(operator, a, b)
  if operator == "add" || operator == "+"
    return a + b
  elsif operator == "subtract" || operator == "-"
    return a - b
  elsif operator == "multiply" || operator == "*"
    return a * b
  elsif operator == "divide" || operator == "/"
    if b == 0
      return "divide by zero error!"
    else return a / b
    end
  end
end

def is_number(num)
  true if Float(num) rescue false
end

def get_number(msg)
  input = ""
  until is_number(input) do
    print msg
    input = gets.chomp
  end
  return input.to_f
end


operators = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"]
operator_type = ""
until operators.include? operator_type do
  print "Please enter operator type (Only the following operators are supported - #{operators.inspect}): #{}"
  operator_type = gets.chomp
end
num1 = get_number ("Enter number 1: ")
num2 = get_number ("Enter number 2: ")
answer = calculate_answer(operator_type, num1, num2)
puts "The answer is #{answer}."
