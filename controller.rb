require('sinatra')
require('sinatra/contrib/all')

require_relative('models/film')
also_reload('./models/*')

get '/films' do
  @results = Film.all
  erb(:index)
end
