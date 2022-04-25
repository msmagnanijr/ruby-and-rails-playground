def even_or_odd(num)
    result = -99
    result = num % 2
    if result == 0
        return 0
    else
        return 1
    end
end

#num.to_i.even?

puts "Enter a number: "
num = gets.chomp.to_i
puts "It is #{even_or_odd(num) == 0 ? "even" : "odd"}."