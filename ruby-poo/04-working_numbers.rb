puts 1 + 2
puts 10 / 4
puts 10 / 4.0
puts 10 / 4.to_f

x = 10
y = 4.to_f
puts x / y

puts "5" * 2

puts "-" * 10

for i in 1..10
  puts "*" * i
end

10.times { puts "-" }

20.times { |i| puts "*" * i }

puts rand(100)
5.times { puts rand(5) }

puts "5".to_i + "10".to_i

puts "hello".to_i

puts "Simple Calculator"
25.times { print "-" }
puts "\nEnter first number"
first_number = gets.chomp.to_i
puts "Enter second number"
second_number = gets.chomp.to_i
puts "Enter operation"
operation = gets.chomp
puts "Result is #{first_number.send(operation, second_number)}"