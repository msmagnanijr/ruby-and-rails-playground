def string_to_num(input_string)
    puts input_string.class
    result = ""
    result = (input_string).to_f
    return result
  end

puts "Enter a number: "
num = gets.chomp
result_final = string_to_num(num)
puts "It is #{result_final} and the type is #{result_final.class}."