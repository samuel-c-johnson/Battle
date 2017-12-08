require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class BattleApp < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end
  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect ('/play')
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    @game = Game.new(@player_1, @player_2)
    @game.damage(@player_2)
    #redirect ('/play')
    erb(:attack)
  end

  # get '/attack' do
  #   @player_1 = $player_1
  #   @player_2 = $player_2
  #   erb(:attack)
  # end






  run! if app_file == $0
end
