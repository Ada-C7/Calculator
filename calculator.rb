# calc.rb

def main
  oper = process_op
  num1 = process_num
  num2 = process_num
  final_calc(oper, num1, num2)
end

def process_op
  operator_hash = {"add" => '+', "+" => "+", "subtract" => "-" , "-" => "-", "multiply" => "*", "*" => "*", "divide" => "/", "/" => "/"}
  puts "Enter an operator"
  math_verb = gets.chomp.downcase
  until operator_hash.has_key?(math_verb)
    puts "This is not math"
    puts "Enter an operator"
    math_verb = gets.chomp.downcase
  end
  return operator_hash[math_verb]
end



# handles erroneous input
def process_num
  print "Enter a number: "
  num1 = Integer(gets.chomp) rescue nil
  until num1.is_a?(Integer) do
    print "This is not a number. Please enter a number: "
    num1 = Integer(gets.chomp) rescue nil
  end
  return num1
end


# adds numbers with both add and +
# subtracts numbers with both subtract and -
# adds numbers with both multiply and *
# adds numbers with both divide and /
def final_calc(operation, num1, num2)
  case operation
    when "+"
      puts "#{num1 + num2}"
    when "-"
      puts "#{num1 - num2}"
    when "*"
      puts "#{num1 * num2}"
    when "/"
      if num2 == 0
        puts "You can't divide by 0"
      else
        puts "#{num1 / num2}"
      end
    end
end

main
