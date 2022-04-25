def string_producer(input_string)
    result = input_string + "<3" * 3
    return result
end
puts  string_producer("ruby")

#result = "#{input_string}<3<3<3"


#width = input_string.length + 6 # length of "<3<3<3" is equal to six
#result = input_string.ljust(width,'<3')
