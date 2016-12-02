require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')

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

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @definition = Definition.find(params.fetch('id').to_i())
  @definition_array = Definition.all()
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post('/definitions') do
  @description= params.fetch('definition')
  @definition = Definition.new(@description)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@defintion)
  erb(:success2)
end
