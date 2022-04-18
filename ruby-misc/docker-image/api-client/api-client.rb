require 'sinatra'
require 'net/http'
require 'json'

get '/' do
    url = 'http://192.168.1.195:4567/api/v1/students'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response.to_json
end