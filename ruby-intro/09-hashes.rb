# Hash a.k.a. Dictionary
sample_hash = { "One" => 1, "Two" => 2, "Three" => 3 }
sample_hash.keys
sample_hash.values
p sample_hash["One"]

user_data = {'Name' => 'John', 'Age' => '27', 'Country' => 'USA'}
p user_data
p user_data['Name']

another_hash = {a: 1, b: 2, c: 3}
#p another_hash[:a]
#p another_hash.keys
#p another_hash.values

puts another_hash.each { |key, value| puts "#{key} is #{value}" }

names_and_ages = { :age => 27, :name => "Mauricio", :foreigner => false }
names_and_ages.each do |key, value|
    puts " The class key is #{key.class} and the class value is #{value.class}"
end

names_and_ages[:birthday] = "July 4th"
p names_and_ages
names_and_ages[:age] = 33
p names_and_ages

#names_and_ages.select { |key, value|  p value.is_a?(String) }

names_and_ages.select { |key, value|  names_and_ages.delete(key) if value.is_a?(Integer) }

p names_and_ages