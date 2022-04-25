require 'sinatra'
require "sinatra/namespace"

get '/' do
  'Welcome to Ruby Educative String Playground'
end

namespace '/api/v1' do

    before do
        content_type 'application/json'
    end

    def palindrome(text)
        if text == text.reverse
            return "#{text} is a palindrome"
        else
            return "#{text} is not a palindrome"
        end
    end

    get '/reverse_text' do
        # http://localhost:4567/api/v1/reverse_text?text=Namaste
        text = params[:text]
        palindrome_result = palindrome(text)
        text_reversed = text.reverse
            {
                status: 'success',
                message: 'Text reversed',
                original_text: text,
                text: text_reversed,
                is_palindrome: palindrome_result
            }.to_json
    end

    get '/upper_case' do
        # http://localhost:4567/api/v1/upper_case?text=Namaste
        text = params[:text]
        text_upper_case = text.upcase
            {
                status: 'success',
                message: 'Text in upper case',
                original_text: text,
                text: text_upper_case
            }.to_json
    end

    get '/count_words' do
        # http://localhost:4567/api/v1/count_words?text=Namaste
        text = params[:text]
        text_count = text.split.count
            {
                status: 'success',
                message: 'Number of words in text',
                original_text: text,
                text: text_count
            }.to_json
    end
end