require 'sinatra'
require "sinatra/namespace"

get '/' do
  'Welcome to Ruby Educative Numbers Playground'
end

namespace '/api/v1' do

    before do
        content_type 'application/json'
    end

    get '/even_or_odd' do
        # matches "GET /even_or_odd?number=5"
        # http://localhost:4567/api/v1/even_or_odd?number=6
        number = params[:number]
        if number.to_i.even?
            {
                status: 'success',
                message: 'Number is even',
                number: number
            }.to_json
        else
            {
                status: 'success',
                message: 'Number is odd',
                number: number
            }.to_json
        end
    end
end