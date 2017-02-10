puts "Welcome to Calculator."


def get_number
  while true
    puts "Please enter a number:"
    new_num = gets.chomp

      # handle erroneous input for num1 and num2: nil, non-numeric
      # make your program know when it needs to return an integer vs a float
      if (new_num =~ /[0-9]/) && (new_num == new_num.to_i.to_s)
        return new_num.to_i
      elsif (new_num =~ /[0-9]/) && (new_num == new_num.to_f.to_s)
        return new_num.to_f
      else
        puts "That input is not an number."
      end
  end
end


puts "This calculator accepts two numbers and performs a mathematical operation on them."
numbers = []
2.times do
  numbers << get_number
end

puts "What should the calculator do to the numbers?"
operation = gets.chomp

# handle input of erroneous operators
operations = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "raise to the power of", "**", "modulo", "%"]
while !operations.include?(operation)
  puts "Please input a valid operation: #{operations}"
  puts "What should the calculator do to the numbers?"
  operation = gets.chomp
end


case operation
  when "add", "+"
    puts "#{numbers[0]} + #{numbers[1]} = #{numbers[0] + numbers[1]}"
  when "subtract", "-"
    puts "#{numbers[0]} - #{numbers[1]} = #{numbers[0] - numbers[1]}"
  when "multiply", "*"
    puts "#{numbers[0]} * #{numbers[1]} = #{numbers[0] * numbers[1]}"
  when "divide", "/"
    # handle case of dividing by zero
    if numbers[1] != 0
       puts "#{numbers[0]} / #{numbers[1]} = #{numbers[0] / numbers[1]}"
    else
      puts "This calculator, like all calculators, cannot divide by zero."
    end
  when "raise to the power of", "**"
    puts "#{numbers[0]} ** #{numbers[1]} = #{numbers[0] ** numbers[1]}"
  when "modulo", "%"
    puts puts "#{numbers[0]} % #{numbers[1]} = #{numbers[0] % numbers[1]}"
  else
    puts "Oh no, something is wrong!"
end
