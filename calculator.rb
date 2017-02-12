puts "Let's calculate!"
yes_no = "y"
while yes_no == "y"
  print "Enter an operation to use. (Enter N to quit): "
  operation = gets.chomp
  if operation.downcase == "n"
    break
  else
    until ["+","-","*","/","^","mod","add", "subtract", "multiply", "divide","exponent", "modulo"].include? (operation)
      print "Re-Enter an operation to use: "
      operation = gets.chomp
    end
  end

  print "Enter the first number: "
  f_num = Float(gets.chomp) rescue nil
  until f_num.is_a?(Float)
    print "Re-Enter the first number: "
    f_num = Float(gets.chomp) rescue nil
  end

  print "Enter the second number: "
  s_num = Float(gets.chomp) rescue nil
  until s_num.is_a?(Float)
    print "Re-Enter the second number: "
    s_num = Float(gets.chomp) rescue nil
  end

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
  when "exponent", "^"
    result = f_num ** s_num
  when "modulo", "mod"
    result = f_num % s_num
  end

  #returning integers instead of floats when it's applicable.
  def is_integer?(num)
    num % num.to_i == 0.0 rescue 0
  end

  if is_integer?(result)
    result = result.to_i
  end

  if is_integer?(f_num)
    f_num = f_num.to_i
  end

  if is_integer?(s_num)
    s_num = s_num.to_i
  end

  puts "#{f_num} #{operation} #{s_num} = #{result}"
end
