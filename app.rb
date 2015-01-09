require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @object = params.fetch('object')
  @answer = params.fetch('object').word_counter(params.fetch('argument'))
  erb(:answer)
end
