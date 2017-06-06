require 'sinatra'

get '/' do
  "This is the home page."
end

get '/test' do
  "Your payment has processed successfully."
end

get '/hello' do
  "hi hi hi hi hi HII"
end

get '/hello/:name' do |n|
  "Hello #{n}"
end

# get '/success?last4=:digits&amount=:amt' do
#  "Your card ending in #{digits} has been charged #{amt} cents."
# end

get '/success' do
  # matches "GET /posts?title=foo&author=bar"
  last4 = params['last4']
  amount = params['amount']
  "Your card ending in #{last4} has been charged #{amount} cents"
  # uses title and author variables; query is optional to the /posts route
end
