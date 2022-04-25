require 'date'

def days_in_month(year, month)
  Date.new(year, month, -1).day
end
puts "Please enter a year:"
year = gets.chomp.to_i
puts "Please enter a month:"
month = gets.chomp.to_i
puts "The number of days in #{month}/#{year} is #{days_in_month(year, month)}"