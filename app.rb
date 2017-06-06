require 'sinatra'

get '/' do
  "This is the home page."
end

post '/hoho' do
  "hoho"
end

get '/hello' do
  "hi hi hi hi hi HII"
end

get '/hello/:name' do |n|
  "Hello #{n}"
end


post '/' do
  "hello"
end

post '/' do
  "bye"
end

get '/posts' do
  # matches "GET /posts?title=foo&author=bar"
  title = params['title']
  author = params['author']
  # uses title and author variables; query is optional to the /posts route
end
