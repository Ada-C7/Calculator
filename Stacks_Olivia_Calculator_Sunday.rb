
puts "Let's do some math. What kind of math should we do?"

operator = gets.chomp

until ["+", "-", "*", "/"].include?(operator)
  puts "Neato, but please tell me to (+), (-), (*), (/)."
  operator = gets.chomp
end

puts "Good job. Now enter a number."
num1 = gets.chomp

unless num1.match(/\d(?![a-zA-Z])/)
  puts "Please just enter a digit, Shakespeare."
else
  puts "We'll need one more number to do stuff."
  #num1.match(/\d(?![a-zA-Z])/) == nil
end

#while num1.match(/\d(?![a-zA-Z])/) == nil

num2 = gets.chomp

unless num2.match(/\d(?![a-zA-Z])/)
  puts "You have terrible short-term memory. Sorry. Just enter a number."
  #num2 = gets.chomp
else  #num2.match(/\d(?![a-zA-Z])/) == true
  puts "...Let's do the math..."
end


def calculate(num1, num2, operator)
  num1 = num1.to_i.to_f
  num2 = num2.to_i.to_f
  case operator
  when "+"
    puts (num1 + num2)
  when "-"
    puts (num1 - num2)
  when "*"
    puts (num1 * num2)
  when "/"
    puts (num1 / num2)
  end
end
puts "#{num1}#{operator}#{num2} "
calculate(num1, num2, operator)



#things I tried that didn't work well or at all:

#def alpha_check_loop(input)
#alpha_check_loop(num1)
# puts "We'll need one more number to do stuff."
# num2 = gets chomp
# alpha_check_loop(num1)

#regexs i tried: `num1 =~ /\A[+-]?\d+(\.[\d]+)?\z/.match(num1)`
# `num2 =~ /\A[+-]?\d+(\.[\d]+)?\z/.match(num2)``

# until num1.match(/\d(?![a-zA-Z])/)
#   puts "Please enter a just a number, Shakespeare."
#   if num1.match(/\d(?![a-zA-Z])/)
#     puts "Great. We'll need one more number to do stuff."
#     num1 = num1.to_i
#   end
# end
# num2 = gets.chomp
# until num2.match(/\d(?![a-zA-Z])/)
#   puts "You have terrible short-term memory. Sorry. Just enter a number."
#   if num2.match(/\d(?![a-zA-Z])/)
#     puts "...Let's do the math..."
#     num2 = num2.to_i
#   end
# end

#if num1 == "0"
# def numeric?(num1)
#     Float(self) != nil rescue false
#   end
# def number?(num1)
#   num1 = num1.to_s unless obj.is_a? String
#   /\A[+-]?\d+(\.[\d]+)?\z/.match(obj)
# end
# #=~ /\A[+-]?\d+(\.[\d]+)?\z/

# def letter?(input)
#   num1 =~ /[[:alpha:]]/
#
# end
#
# def numeric?(lookAhead)
#   lookAhead =~ /[[:digit:]]/
#end
