require('sinatra')
require('sinatra/reloader')
require('./lib/dayfinder')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @date = params.fetch('date')
  @day = params.fetch('date').dayfinder()
  erb(:answer)
end
