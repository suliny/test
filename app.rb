require 'sinatra'

get '/' do
  "This is the home page."
end

get '/success' do
  "Your payment has processed successfully."
end

get '/hello' do
  "hi hi hi hi hi HII"
end

get '/hello/:name' do |n|
  "Hello #{n}"
end
