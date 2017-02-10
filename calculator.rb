puts 'What operation would you like to run?'

operation = gets.chomp

until operation == 'add' || operation == '+' || operation == 'subtract' || operation == '-' || operation == 'multiply' || operation == '*' || operation == 'divide' || operation == '/' || operation == 'exponify' || operation == '**'
    puts 'Sorry, I dont understand that.'
    puts 'Please provide a valid operation:'
    operation = gets.chomp
end

case operation
when 'add', '+'
    puts 'Yay, what two numbers are we adding?'
when 'subtract', '-'
    puts 'Yay, what two numbers are we subtracting?'
when 'multiply', '*'
    puts 'Yay, what two numbers are we multiplying?'
when 'divide', '/'
    puts 'Yay, what two numbers are we dividing?'
when 'exponify', '**'
    puts 'Yay, what two numbers are we exponifying?'
else
    puts 'How did you get here? =.='
end

firstnum = 0
secondnum = 0

loop do
    puts 'First number?'
    begin
        firstnum = Kernel.gets.match(/\d+/)[0].to_f
    rescue
        puts 'Please enter valid number'
    else
        break
    end
end

loop do
    puts 'Second number?'
    begin
        secondnum = Kernel.gets.match(/\d+/)[0].to_f
    rescue
        puts 'Please enter valid number'
    else
        break
    end
end

if operation == 'divide' || operation == '/' && secondnum == 0
    puts "Can't divide by 0."
    while secondnum == 0
        puts 'Second number?'
        begin
            secondnum = Kernel.gets.match(/\d+/)[0].to_f
        rescue
            puts 'Please enter valid number'
        end
    end
  end

case operation
when 'add', '+'
    result = firstnum + secondnum
    puts "#{firstnum} + #{secondnum}"
    puts result
when 'subtract', '-'
    puts "#{firstnum} - #{secondnum}"
    result = firstnum - secondnum
    puts result
when 'multiply', '*'
    puts "#{firstnum} * #{secondnum}"
    result = firstnum * secondnum
    puts result
when 'divide', '/'
    puts "#{firstnum} / #{secondnum}"
    result = firstnum / secondnum
    puts result
when 'exponify', '**'
    puts "#{firstnum} ** #{secondnum}"
    result = firstnum**secondnum
    puts result
else
    puts 'How did you get here? =.='
end
