# implicit function to_s
class Student
    attr_accessor :first_name, :last_name, :email, :username ,:password
    @first_name
    @last_name
    @email
    @username
    @password

    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    def to_s
        "First Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nUsername: #{@username}\nPassword: #{@password}"
    end
end

mauricio = Student.new("Mauricio", "Magnani", "msmagnanijr@gmail.com","mmagnani", "12345")
puts mauricio.to_s

puts "\n"

paulo = Student.new("Paulo", "Silva", "paulo@gmail.com","psilva", "45598")
puts paulo.to_s

#mauricio.last_name =  paulo.last_name
#puts mauricio