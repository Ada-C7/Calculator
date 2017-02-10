# Define the method that will do the calculation
def calculate(first, second, operator, type)
  #Make sure the numbers passed in are legitimate numbers
  if !(first.to_i.to_s == first) || !(second.to_i.to_s == second)
    result = "Could not calculate. Make sure you put in a valid number and operation."
  else
    #Depending on user input, set the numbers as either Float or Integer
    if type == "float"
      first = Float(first)
      second = Float(second)
    else
      first = Integer(first)
      second = Integer(second)
    end
    #The calculator part of the calculator!
    case operator
    when "add", "+", "plus"
      result = add(first, second)
    when "subtract", "-", "minus"
      result = subtract(first, second)
    when "multiply", "*"
      result = multiply(first, second)
    when "divide", "/"
      if second == 0
        result = "You can't divide by 0!"
      else
        result = divide(first, second)
      end
    when "exponent", "^"
      result = exponent(first, second)
    when "remainder", "%"
      if first.is_a? Float
        result = "You can't find the remainder of floats!"
      else
        result = remainder(first, second)
      end
    else
      result = "This is not a valid operation. Please put in a valid operation."
    end
  end

  return result
end


#Methods for the actual calculation
def add(num_one, num_two)
  return num_one + num_two
end

def subtract(num_one, num_two)
  return num_one - num_two
end

def multiply(num_one, num_two)
  return num_one * num_two
end

def divide(num_one, num_two)
  return num_one / num_two
end

def exponent(num_one, num_two)
  total = 1
  base = num_one
  num_two.times do
    total = total * base
  end
  return total
end

def remainder(num_one, num_two)
  remain = num_one % num_two
  return remain
end

#Parenthesis helper method to deal with parenthetic input
def has_paranthesis(str, type)
  if ((str.include? "(") && (str.include? ")"))
    sub_calc = str.split(" ")
    front = sub_calc[0].split("")
    front.shift
    sub_calc[0] = front.join("")
    back = sub_calc[2].split("")
    back.delete_at(-1)
    sub_calc[2] = back.join("")
    result = calculate(sub_calc[0], sub_calc[2], sub_calc[1], type).to_i.to_s
  else
    result = str
  end

  return result
end

#Get user input, set the variables for the numbers, operation used and number type
puts "This is a Calculator!"
puts "Enter the numbers you want to calculate. You can also enter numbers in paranthesis..."
print "First number: "
first_num = gets.chomp
print "Second number: "
second_num = gets.chomp
print "What operation would you like to perform on the numbers? (+, -, *, /, ^, %): "
operation = gets.chomp
print "Would you like the solution as an Integer or a Float? "
num_type = gets.chomp.downcase

#Call the method calculate and output the result!
puts "Calculating....."
puts "#{first_num} #{operation} #{second_num}"
puts "Checking for parenthesis....simplifying...."
#Check to see if the input contains paranthesis, and if so calculate paranthetic expression
first_num = has_paranthesis(first_num, num_type)
second_num = has_paranthesis(second_num, num_type)
calculation = calculate(first_num, second_num, operation, num_type)
puts "#{first_num} #{operation} #{second_num} = #{calculation}"
