def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def modulo(num_1, num_2)
  return num_1 % num_2
end

def exponent(num_1, num_2)
  return num_1 ** num_2
end

def numeric?(str)
  return (Float(str) != nil) rescue return false
end

def prompt_numeric
  puts "Enter a number."
  input = gets.chomp
  while !numeric? input
    puts "That's not a valid number, please try again."
    input = gets.chomp
  end
  number = Float(input)
  if number == number.to_i
    return number.to_i
  else return number
  end
end

def prompt
  puts "Would you like to add (+), subtract (-), divide (/), multiply (*), exponent (^), modulo (%)?"

  operator = gets.chomp

  until operator == "add" || operator == "+" || operator == "subtract" || operator == "-" || operator == "divide" || operator == "/" || operator == "multiply" || operator == "*" || operator == "exponent" || operator == "^" || operator == "modulo" || operator == "modulus" || operator == "%"
    puts "We don't handle those operators, try again."
    operator = gets.chomp
  end

  num_1 = prompt_numeric
  num_2 = prompt_numeric

  case operator
    when "add", "+"
      result = "#{num_1} + #{num_2} = #{add(num_1, num_2)}"
    when "subtract", "-"
      result = "#{num_1} - #{num_2} = #{subtract(num_1, num_2)}"
    when "divide", "/"
      if num_2 == 0
        then puts "Cannot divide by 0."
      else
        result = "#{num_1} / #{num_2} = #{divide(num_1, num_2)}"
      end
    when "multiply", "*"
      result = "#{num_1} * #{num_2} = #{multiply(num_1, num_2)}"
    when "exponent", "^"
      result = "#{num_1} ^ #{num_2} = #{exponent(num_1, num_2)}"
    when "modulo", "modulus", "%"
      result = "#{num_1} % #{num_2} = #{modulo(num_1, num_2)}"
    else
      puts "Cannot calculate - here's a case I didn't expect!"
  end
  puts result
end

prompt
