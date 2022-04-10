=begin

a = [1,2,3,4,5,6,7,8,9]
p a.last
p a.first

x = 1..10
p x.to_a
p x.to_a.shuffle

p a.reverse

numbers = [2,2]
p numbers.inject(:+)
p numbers.inject(:*)
p numbers.inject(:/)
p numbers.inject(:-)

unique_numbers = [2,3,3,5,9,4,7,1,1,6,8,9,5,7,2,2]
p unique_numbers.uniq
p unique_numbers.uniq.sort

alphabet = ('a'..'z').to_a
p alphabet.reverse
p alphabet.sort
p alphabet.length

my_array = [1,2,3,4,5,6,7,8,9]
my_array << 11
my_array.push(12)
p my_array
my_array.unshift("Mauricio")
p my_array
my_array.append("Mauricio")
p my_array
my_array.insert(9, "Mauricio")
p my_array
my_array.uniq!
p my_array
p my_array.empty?
p my_array.include?("Mauricio")
p my_array.include?("Jack")
my_array.push("Jack")
p my_array
p my_array.count("Jack")
returned_item = my_array.pop
p returned_item
p my_array.join
p my_array.join("-")
other_array = my_array.join("-")
p other_array.split("-")

z = %w(my name is Mauricio and Ruby is very cool)
p z
p z[3]

#z.each do |item|
#    puts item
#end

z.each {|item| print item.capitalize + " "}

final_array = [1..100].to_a.shuffle
p final_array.select {|item| item % 2 == 0}
=end


# https://stackoverflow.com/questions/65937714/no-such-file-or-directory-rb-sysopen-for-external-url-rails-6-11-ruby-3
require 'open-uri'
require 'yaml'

"Welcome to My Shopify scraper"
#https://github.com/Shopify/shopify_app/blob/main/translation.yml

print  "\nEnter your language: "
language = gets.chomp


data = YAML.parse(URI.open("https://raw.githubusercontent.com/Shopify/shopify_app/main/translation.yml")).to_ruby
supported_languages = data.to_a.select {|item| item[0] == "target_languages"}

if supported_languages.first[1].include?(language)
    puts "\nLanguage is supported"
    puts "\nOpening your specified language file: #{language}.yml"
    dinamic_language_file = YAML.parse(URI.open("https://raw.githubusercontent.com/Shopify/shopify_app/main/config/locales/#{language}.yml")).to_ruby
    fields = dinamic_language_file.to_a.select {|item| item[0] == language}
    #p fields.first[1].keys
    #p fields.first[1].values
    words = fields.first[1].values.to_a
    puts "\n#{words.join(" ")}"
else
    puts "Language is not supported"
end