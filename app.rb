require 'sinatra/base'

class BattleApp < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end

  get '/' do
    @name = params[:name]
    erb(:index)
  end

  post '/players' do
    @name = params[:name]
    erb(:play_erb)
  end






  run! if app_file == $0
end
