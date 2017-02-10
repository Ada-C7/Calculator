# this is my calculator program
# we're starting out with some methods
def add(num_one, num_two)
  return "#{num_one} + #{num_two} = #{num_one + num_two}"
end

def subtract(num_one, num_two)
  return "#{num_one} - #{num_two} = #{num_one - num_two}"
end

def multiply(num_one, num_two)
  return "#{num_one} * #{num_two} = #{num_one * num_two}"
end

def divide(num_one, num_two)
  return "#{num_one} / #{num_two} = #{num_one / num_two}"
end

def exponify(num_one, num_two)
  return "#{num_one} ** #{num_two} = #{num_one ** num_two}"
end

def modulo(num_one, num_two)
  return "#{num_one} % #{num_two} = #{num_one % num_two}"
end

# okay here we get the two user numbers
puts "Welcome to my nifty calculator!"
puts "please enter two numbers:"
user_num_one = gets.chomp
user_num_two = gets.chomp

# and then I use regex to check the numbers. I use a while loop to check each number and bump it back to the user if it's wrong.
while user_num_one.match(/\D/)
  puts "Yo, that first number wasn't right. try again please!"
  user_num_one = gets.chomp
end

while user_num_two.match(/\D/)
  puts "Yo, that second number wasn't right. try again please!"
  user_num_two = gets.chomp
end

# and then I convert each number to a float, so that I can actually use it to do math.
user_num_one = user_num_one.to_f
user_num_two = user_num_two.to_f

puts 'Would you like to add(+), subtract(-), multiply(*), divide(/), exponify(**), or modulo(%)?'
command = gets.chomp

# here I check if someone is dividing by zero. Since I'm only re-asking for the second number (the dividor), and .to_f converts any strings to 0, I don't need to re-check if it's a string -- it'll ask me for a number if I do enter a string.

correct = false
until correct
  if command == "divide" || command == "/" && user_num_two == 0
    puts "Error! cannot divide by zero! Help!"
    puts "please enter a new second number? please?"
    user_num_two = gets.chomp.to_f
  elsif command == "divide" || command == "/" && user_num_two != 0
    correct = true
  else
    correct = true
  end
end

# and here's where all the actual math action happens

case command
  when "add", "+"
    puts "We're adding numbers!"
    puts add(user_num_one, user_num_two)
  when "subtract", "-"
    puts "We're subtracting numbers!"
    puts subtract(user_num_one, user_num_two)
  when "multiply", "*"
    puts "We're multiplying numbers!"
    puts multiply(user_num_one, user_num_two)
  when "divide", "/"
    puts "We're dividing numbers!"
    puts divide(user_num_one, user_num_two)
  when "exponify", "**"
    puts "We're exponentiating numbers!"
    puts exponify(user_num_one, user_num_two)
  when "modulo", "%"
    puts "we're modulating numbers!"
    puts modulo(user_num_one, user_num_two)
  else
    puts "That's not right! I can't do that! I'm done with this! Bye!"
end
