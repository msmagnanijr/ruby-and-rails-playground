require 'sinatra'
require "sinatra/namespace"

get '/' do
  'Welcome to Ruby University!'
end

namespace '/api/v1' do

    before do
        content_type 'application/json'
      end

    get '/students' do
        students = ["John", "Jane", "Jack", "Jill", "Jim", "Clarke","Cris","Mauricio"]
        students.to_json
    end

    get '/animals' do
        animals = ["Dog", "Cat", "Bird", "Fish", "Lizard", "Turtle", "Snake", "Elephant"]
        animals.to_json
    end
end