require('sinatra')
require('sinatra/reloader')
require('./lib/delivery')
also_reload('./lib/**/*')

get('/') do
  erb(:index)
end

get('/result') do
  test_package = Delivery.new(params.fetch('length'), params.fetch('width'), params.fetch('height'), params.fetch('weight'))
  @result = test_package.cost_to_ship()
end
