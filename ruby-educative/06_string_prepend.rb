def prepend_string(string1, string2)
    result = ""
    result = string1.prepend(string2)
    #padded_string2 = " #{string2} "
    #result = string1.prepend(padded_string2)
    return result
end
puts "Enter a string: "
string1 = gets.chomp
puts "Enter another string: "
string2 = gets.chomp
result = prepend_string(string1, string2)
puts "The result is #{result}."


