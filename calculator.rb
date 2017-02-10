print "Enter an operation to use: "
operation = gets.chomp
  until ["+","-","*","/","add", "subtract", "multiply", "divide"].include? (operation)
    print "Re-Enter an operation to use: "
    operation = gets.chomp
  end

def is_number?(num)
  num == num.to_i.to_s || num == num.to_f.to_s
end

print "Enter the first number: "
f_num = gets.chomp
until is_number?(f_num)
  print "Re-Enter the first number: "
  f_num = gets.chomp
end

print "Enter the second number: "
s_num = gets.chomp
until is_number?(s_num)
  print "Re-Enter the second number: "
  s_num = gets.chomp
end

puts f_num
puts s_num
f_num = f_num.to_f
s_num = s_num.to_f

case operation
when "add", "+"
  result = f_num + s_num
when "subtract", "-"
  result = f_num - s_num
when "multiply", "*"
  result = f_num * s_num
when "divide", "/"
  until s_num != 0
    print "Enter the second number again: "
    s_num = gets.chomp.to_i
  end
  result = f_num / s_num

end

puts result

