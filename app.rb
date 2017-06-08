require 'sinatra'
require 'sqlite3'

get '/' do
  # connect to the database
  db = SQLite3::Database.open('store.db')

  # configure results to be returned as as an array of hashes instead of nested arrays
  db.results_as_hash = true

  # query the products table and print the result
  puts "Database query results:"
  @products = db.execute("SELECT id, description, price FROM products;")

  # close database connection
  db.close
  erb  :home
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

get '/success' do
  # matches "GET /success?last4=foo&amount=bar"
  last4 = params['last4']
  amount = params['amount']
  "Your card ending in #{last4} has been charged #{amount} cents"
end



post '/pay' do
  p "The data sent to the /pay POST route is:"
  p params
  redirect to('/success')
end
