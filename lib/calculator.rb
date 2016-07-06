puts "What operation would you like to perform? (add, sub, mult, div)"
operation = gets.chomp.downcase
puts "What is your first number?"
first = gets.chomp.to_i
puts "What is your second number?"
second = gets.chomp.to_i

if operation == "add"
  sum = first + second
elsif operation == "sub"
  sum = first - second
elsif operation == "mult"
  sum = first * second
elsif operation == "div"
  sum = first / second
end

puts "Your answer is #{sum}"
