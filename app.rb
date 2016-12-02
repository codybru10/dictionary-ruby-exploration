require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:new_word)
end
