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

  post '/attack/new' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.damage($game.victim)
    redirect ('/continue')

  end

  get '/attack' do
    $game.attacker_swap
    $game.victim_swap

    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb(:attack)
  end

  get '/continue' do
    erb(:continue)

    end



  run! if app_file == $0
end
