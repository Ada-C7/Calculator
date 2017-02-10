# Calculator
# by Sofia Kim(Queue)

puts "Enter the the first number, operator and second number in order."

a = gets.chomp
b = gets.chomp
c = gets.chomp

# To validate if user inputs are valid numbers?
def isNumber(str)
  str == "0" || str.to_i != 0 #return boolean value / any string to i would return '0'. Therefore, if str.to_i is not '0' meaning that the str is actual number.
end

# To validate if the user input numbers include decimal points or not
def hasDot(str)
  str.include?(".")
end

# change data types of numbers (integer or float)
def num_type(x)
  if hasDot(x)
    x.to_f
  else
    x.to_i
  end
end

def calc(x, y, z)
  # x = x.to_i; z = z.to_i
  if isNumber(x) && isNumber(z)
    x = num_type(x)
    z = num_type(z)

    ans = case y
    when '+', 'add'
      x + z
    when '-', 'subtract'
      x - z
    when '*', 'multiply'
      x * z
    when '/', 'divide'
      # The program handles divide when attempting to divide by zero
      if z != 0
        x / z
      else puts "Please enter other than '0'"
      end
    when '%' , 'modulo'
      x % z
    when '**' , 'exponents'
      x ** z
    else
      puts "Enter a valid operator"
    end
    # p ans
    puts "#{x} #{y} #{z} = #{ans}"
  else puts "Enter valid numbers"
  end
end

calc(a,b,c)
