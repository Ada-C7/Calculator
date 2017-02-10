#METHODS
#add method
def add(num_one, num_two)
  puts "#{num_one} + #{num_two} = #{(num_one + num_two)}"
end

#subtract method
def subtract(num_one, num_two)
  puts "#{num_one} - #{num_two} = #{(num_one - num_two)}"
end

#multiply method
def multiply(num_one, num_two)
  puts "#{num_one} * #{num_two} = #{(num_one * num_two)}"
end

#divide method
def divide(num_one, num_two)
  if num_two == 0 then
    puts "Can't divide by zero. Gimme another number to divide by "
    num_two = Integer(gets)
    until num_two > 0
      print "Oi! No 0's! Try again: "
      begin
      num_two = gets.chomp
      num_two = Integer(num_two)
      rescue
        print "Please enter as a numerical number: "
        retry
      end
    end
  end
  puts "#{num_one} / #{num_two} = #{((num_one).to_f / (num_two).to_f)}"
end

#exponify method
def exponify(num_one, num_two)
  print "#{num_one} ^ #{num_two} = "
  (num_two - 1).times do
    print "#{num_one} * "
  end
  print "#{num_one} = "
  puts "#{num_one ** num_two}"
end

#modulo method
def modulo(num_one, num_two)
  puts "#{num_one} % #{num_two} = #{(num_one % num_two)}"
end


#prompts
puts "Hi! I'm Baby Calculator!"
puts "Do you want to add, subtract, multiply, divide, exponify, or modulo?"
print "> "
operation = gets.chomp

puts "What's the first whole number you want me to #{operation} ?"
print "> "
begin
num_one = gets.chomp
num_one = Integer(num_one)
rescue
  print "Please enter as a numerical number: "
  retry
end

puts "What's the second whole number you want me to #{operation} "
print "> "
begin
num_two = gets.chomp
num_two = Integer(num_two)
rescue
  print "Please enter as a numerical number: "
  retry
end


#CALCULATOR PROGRAM
#case-when simpler than if-else. this calls on the above methods
case operation
  when "add", "+"
    add(num_one, num_two)
  when "subtract", "-"
    subtract(num_one, num_two)
  when "multiply", "*"
    multiply(num_one, num_two)
  when "divide", "/"
    divide(num_one, num_two)
  when "exponify", "**"
    exponify(num_one, num_two)
  when "modulo", "%"
    modulo(num_one, num_two)
  else
    puts "Wah! I'm a baby calculator. Pwetty pwease add, subtract, multiply, divide, exponify, or modulo. :)"
end
