# Learning how to connect to a MongoDB database using Ruby
# sudo gem install mongo
# docker run -d -p 27017:27017 --name mongodb -v /tmp/mongodb-docker:/data/db -e MONGODB_INITDB_ROOT_USERNAME=admin -e MONGODB_INITDB_ROOT_PASSWORD=redhat mongo:latest
# docker exec -it mongodb bash
# mongo countries
# db
# db.countries.insert({name: "Brazil", capital: "Brasilia", continent: "South America"})
# db.countries.insert({name: "Argentina", capital: "Buenos Aires", continent: "South America"})
# db.countries.insert({name: "Chile", capital: "Santiago", continent: "South America"})
# db.countries.insert({name: "Uruguay", capital: "Montevideo", continent: "South America"})
# db.countries.insert({name: "Paraguay", capital: "Asuncion", continent: "South America"})
# db.countries.insert({name: "Bolivia", capital: "La Paz", continent: "South America"})
# db.countries.insert({name: "Peru", capital: "Lima", continent: "South America"})
# db.countries.insert({name: "Venezuela", capital: "Caracas", continent: "South America"})
# db.countries.insert({name: "Colombia", capital: "Bogota", continent: "South America"})
# db.countries.insert({name: "Ecuador", capital: "Quito", continent: "South America"})
# db.countries.insert({name: "Guyana", capital: "Georgetown", continent: "South America"})
# db.countries.insert({name: "Suriname", capital: "Paramaribo", continent: "South America"})
# db.countries.insert({name: "French Guiana", capital: "Cayenne", continent: "South America"})

require 'mongo'

Mongo::Logger.logger.level = ::Logger::FATAL

client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'countries')

collection = client[:countries]

puts collection.find( { name: 'Brazil' } ).first

#collection.find.each do |document|
#    puts document
#end

client.close