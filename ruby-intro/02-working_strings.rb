
#sentence = 'My name is Mauricio' --> with single quotes is not possible using interpolation
#sentence = "My name is Mauricio"
#p sentence

first_name = "Mauricio"
last_name = "Magnani"
#puts  first_name + " " + last_name
puts "My first name is #{first_name} and my last #{last_name}"

my_numbers = [1,2,3]
p last_name.class
p my_numbers.class

#p first_name.methods
p first_name.upcase.match "MAURICIO"

p 10.class
p 10.to_s.class

def  get_word_size (word)
  p word.length
end

def reverse_word (word)
  p word.reverse
end

p get_word_size "Mauricio"
p reverse_word "Mauricio"

p first_name.empty?
p "".empty?
p "".nil?
p nil.nil?

sentence = "Welcome to ruby programming course"
p sentence.sub("ruby programming", "java development")

paragraph = "Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. Ruby has an elegant syntax that is natural to read and easy to write."
p paragraph.gsub("Ruby", "Java")

my_first_name = "Mauricio"
my_new_first_name = my_first_name
p my_new_first_name
my_first_name  = "Cris"
p my_new_first_name

p "The new first name is \#{my_new_first_name}"

p 'Mauricio asked \'Hey Ruby, what\'s up?\''