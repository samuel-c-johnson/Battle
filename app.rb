require 'sinatra/base'
require './lib/player.rb'

class BattleApp < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end
  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect ('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  post '/attack' do
    puts "#{@player_1_name} attacked #{@player_2_name}"
    redirect ('/attack')
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:attack)
  end






  run! if app_file == $0
end
