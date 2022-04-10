dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }


def get_city_names(dial_book)
    puts dial_book.keys
end

loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    if answer != "y"
        break
    end
    puts "Which city do you want to lookup the area code?"
    get_city_names(dial_book)
    city = gets.chomp.downcase
    if dial_book.include?(city)
        puts "The area code for #{city} is #{dial_book[city]}"
    else
        puts "You entered an invalid city name"
    end
end
