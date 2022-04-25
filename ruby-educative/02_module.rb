def calculate_mod(num1, num2)
    result =-99
    result = num1 % num2
    return result
end

puts "Enter a number: "
num1 = gets.chomp.to_i
puts "Enter another number: "
num2 = gets.chomp.to_i
puts "The modulus of #{num1} and #{num2} is #{calculate_mod(num1, num2)}"