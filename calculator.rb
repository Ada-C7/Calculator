#When method is called, an equation and the sum of the two numbers is printed.
def add(number_1, number_2)
  print "#{number_1.to_f} + #{number_2.to_f} = "
  return number_1.to_f + number_2.to_f
end

#When method is called, an equation and the difference of the two numbers is printed.
def subtract(number_1, number_2)
  print "#{number_1.to_f} - #{number_2.to_f} = "
  return number_1.to_f - number_2.to_f
end

#When method is called, an equation and the product of the two numbers is printed.
def multiply(number_1, number_2)
  print "#{number_1.to_f} * #{number_2.to_f} = "
  return number_1.to_f * number_2.to_f
end

#When method is called, an equation and the quotient of the two numbers is printed.
def divide(number_1, number_2)
  print "#{number_1.to_f} / #{number_2.to_f} = "
  return number_1.to_f / number_2.to_f
end

#Asks the user for two 'number' inputs and one 'operation' input.
print "Enter the first number: "
number_1 = gets.chomp

print "\nEnter the second number: "
number_2 = gets.chomp

print "\nEnter the mathematical operation you want to perform: "
operation = gets.chomp.to_s

#Creates two variables that either equal a number or nil based on the user's input.
number_check_1 = Float(number_1) rescue nil
number_check_2 = Float(number_2) rescue nil

#Prints an error message if one or both of the 'number' inputs were not numbers.
#If both inputs were numbers, the correct operation will be performed
#unless the 'operation' input did not match any of the options.
if number_check_1 == nil || number_check_2 == nil
  print "\nUser entered did not enter a number.\n"
else
  case operation
    when "add", "+"
      puts add(number_1, number_2)
    when "subtract", "-"
      puts subtract(number_1, number_2)
    when "multiply", "*"
      puts multiply(number_1, number_2)
    when "divide", "/"
      puts divide(number_1, number_2)
    else
      print "\nUser did not enter a valid mathematical operation.\n"
  end
end
