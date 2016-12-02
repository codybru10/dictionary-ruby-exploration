require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @words_array = Word.all
  erb(:index)
end

get('/words/new') do
  erb(:new_word)
end

post('/words') do
  added_word = params.fetch('word')
  Word.new({:word => added_word}).save()
  @words_array = Word.all()
  erb(:success)
end
