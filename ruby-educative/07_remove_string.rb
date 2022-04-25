#input_string = "Ruby is fun"
#input_characters = "u"
#result = "Rby is fn"

def remove_chars(input_string, input_characters)
    result = ""
    result = input_string.delete(input_characters)
    #input_characters.each_char do |char|
    #    result = input_string.gsub(char, "")
    #end
    return result
end

puts "Enter a string: "
input_string = gets.chomp
puts "Enter characters to remove: "
input_characters = gets.chomp
result = remove_chars(input_string, input_characters)
puts "The result is #{result}."