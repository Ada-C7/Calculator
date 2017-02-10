# Ask user if they would like to calculate something.
# Verify that it is a yes or no answer.
def introduces
  print "\nWould you like to calculate something? "
  answer = gets.chomp
  until answer.downcase == "yes" || answer.downcase == "no"
    puts "What? Please answer yes or no."
    answer = gets.chomp
  end
  return answer
end

# Ask user what kind of calculation they want to do.
# Verify that it is a valid calculation that the program can perform.
def asks_calculation
  print "Awesome! What type of calculation can I do for ya? "
  calculation = gets.chomp
  until [ "add", "+", "subtract", "-", "multiply", "*", "divide", "/" ].include?(calculation)
    puts "I can add (+), subtract (-), multiply (*), or divide (/)! Please try again."
    calculation = gets.chomp
  end
  return calculation
end

# Ask user for two numbers to calculate
# Verify that it is a valid integer
def get_number
  print "Give me a number: "
  number = Integer(gets.chomp) rescue false
  until number
    puts "Erm, I can only calculate positive numbers. Please try again."
    number = Integer(gets.chomp) rescue false
  end
  return number
end

# Introduce user to program.
puts "Welcome to Sahana's Awesome Calculator!"
answer = introduces

# Call on methods, calculate, and display answers.
while answer.downcase == "yes"
  calculation = asks_calculation
  first_number = get_number
  second_number = get_number

  case calculation.downcase
    when "add", "+"
      puts "#{first_number} + #{second_number} = #{first_number + second_number}"
    when "subtract", "-"
      puts "#{first_number} - #{second_number} = #{first_number - second_number}"
    when "multiply", "*"
      puts "#{first_number} * #{second_number} = #{first_number * second_number}"
    when "divide", "/"
      if first_number == 0 || second_number == 0
        puts "#{first_number} / #{second_number} = 0"
      else
        puts "#{first_number} / #{second_number} = #{first_number / second_number}"
      end
    else
      puts "What in the ...? I need valid numbers and operators, please! Let's try again." # Essentially useless, but cute.
  end

  answer = introduces
end

# Closing message.
puts "Ok! See ya later, gator!"
