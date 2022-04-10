=begin
condition = false
another_condition = false

#if condition || another_condition
if !condition && !another_condition
    puts "this evaluates to true"
else
    puts "this evaluates to false"
end


name = "Marianoa"
if name == "Mauricio" || name.length == 8
    puts "Hello #{name}"
elsif name == "João"
    puts "Hello #{name}"
else
    puts "I don't know you"
end
=end