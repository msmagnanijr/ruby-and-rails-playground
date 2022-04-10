#puts "What is your first name?"
#first_name = gets.chomp
#puts "Thank you! You said your first name was #{first_name}"

#puts "Enter a number between 1 and 100"
#number = gets.chomp.to_i
#result =  number * 10
#puts "Your number multiplied by 10 is #{result}"

def reverse_string(string)
  string.reverse
end

def count_string(string)
  string.length
end

puts "What is you first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Your full name is #{first_name} #{last_name}"
puts "Your full name reversed is #{reverse_string(first_name)} #{reverse_string(last_name)}"
puts "Your full name has #{count_string(first_name+last_name)} characters in it"
