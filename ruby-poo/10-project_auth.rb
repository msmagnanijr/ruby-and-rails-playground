require 'bcrypt'

users = [
    { username: "admin", password: "$2a$12$EE8uFxSUOzHBoo/3uzyio.gqgbkYbjnNxoYqVF54Y064XPAyjfjZy"},
    { username: "mmagnani", password: "$2a$12$EE8uFxSUOzHBoo/3uzyio.gqgbkYbjnNxoYqVF54Y064XPAyjfjZy"}
]

#p BCrypt::Password.new(data[:password]) == "redhat"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user|
        if user[:username] == username && BCrypt::Password.new(user[:password]) == password
            puts "Access granted"
            return true
        end
    end
    puts "Access denied"
    return false
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts "\n"
puts "This program will take input from the user and compare password"
puts "If password is correct, it will display 'access granted'\n"
quit = nil
attempts = 0
while(quit != "q" && attempts < 3) do
    puts "Enter your username:"
    username = gets.chomp
    puts "Enter your password:"
    password = gets.chomp
    data = users.find { |user| user[:username] == username }
    if data
        if auth_user(username, password, users)
        else attempts += 1
        end
    else
        puts "User not found"
        attempts += 1
    end
    if attempts == 3
        puts "You have exceeded the number of attempts"
        quit = "q"
    else
        puts "Press q to quit or any other key to continue:"
        quit = gets.chomp
    end
end