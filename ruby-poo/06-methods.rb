
OPERATION_TYPE = {
    "+" => :addition,
    "-" => :substraction,
    "*" => :multiplication,
    "/" => :division,
    "%" => :module
}

OPERATION_TYPE_INJECTION = {
    addition: :+,
    substraction: :-,
    multiplication: :*,
    division: :/,
    module: :%

 }

=begin
def calculator_history(operation_type, first_number, second_number)
    File.open("calculator_history.txt", "a") do |file|
        file.puts "Operation Time: #{Time.now} | Operation Type: #{operation_type} | First Argument: #{first_number} | Second Argument: #{second_number}"
    end
end
=end
def calculator_history(operation_type, elements)
    File.open("calculator_history.txt", "a") do |file|
        file.puts "Operation Time: #{Time.now} | Operation Type: #{operation_type} | Elements: #{elements}"
    end
end

def calculator_history_read
    File.open("calculator_history.txt", "r") do |file|
        file.each_line do |line|
            puts line
        end
    end
end

def calculator_exception_history(exception, elements, operation)
    File.open("calculator_exception_history.txt", "a") do |file|
        file.puts "Exception Time: #{Time.now} | Exception: #{exception.message} | Elements: #{elements} | Operation: #{operation}"
    end
end

def calculator_exception_read
    File.open("calculator_exception_history.txt", "r") do |file|
        file.each_line do |line|
            puts line
        end
    end
end

def calculator(elements,operation)
    begin
        if OPERATION_TYPE.key?(operation)
            puts "Operation Type: #{OPERATION_TYPE[operation]}"
            puts "Elements: #{elements}"
            puts "Result: #{elements.inject(OPERATION_TYPE_INJECTION[OPERATION_TYPE[operation]])}"
            calculator_history(OPERATION_TYPE[operation], elements)
        else
            puts "Operation is not valid"
        end
    rescue => exception
        calculator_exception_history(exception , elements, OPERATION_TYPE[operation])
        p "Exception: #{exception.message}"
    end
end


elements_final =  []
puts "Simple Calculator"
25.times { print "-" }
puts  "\nEnter the numbers of elements"
elements = gets.chomp.to_i
puts "Enter the elements"
for i in 0..elements-1
    puts "Type the Element #{i+1}"
    elements_final[i] = gets.chomp.to_i
end
puts "Enter the operation"
operation = gets.chomp
calculator(elements_final,operation)

=begin
def calculator(first_number, second_number, operation)
    begin
        if OPERATION_TYPE.key?(operation)
            puts "Result is #{first_number.send(operation, second_number)} and operation is #{OPERATION_TYPE[operation]}"
            calculator_history(OPERATION_TYPE[operation], first_number, second_number)
        else
            puts "Operation is not valid"
        end
    rescue => exception
        calculator_exception_history(exception)
        p "Exception: #{exception.message}"
    end
end


puts "Welcome to the calculator"
25.times { print "-" }
puts "\nEnter first number"
first_number = gets.chomp.to_i
puts "\nEnter second number"
second_number = gets.chomp.to_i
puts "\nEnter operation"
operation = gets.chomp
calculator(first_number, second_number, operation)
puts "\n"
25.times { print "-" }

puts "\nCalculator History"
25.times { print "-" }
puts "\n"
calculator_history_read
puts "\n"
25.times { print "-" }

puts "\nCalculator Exception History"
25.times { print "-" }
puts "\n"
calculator_exception_read
puts "\n"
25.times { print "-" }
=end