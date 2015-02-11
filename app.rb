require ('sinatra')
require ('sinatra/reloader')
require('./lib/coin_combo')

get ('/form') do
  erb(:form)
end

get ('/results') do

  cent_amount = (params.fetch('coin')).to_i()
  @coin = cent_amount.coin_combo()
  erb(:results)
end
