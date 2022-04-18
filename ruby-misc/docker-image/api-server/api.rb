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
        students = ["John", "Jane", "Jack", "Jill", "Jim", "Clarke"]
        students.to_json
    end
end