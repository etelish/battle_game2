require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:p1_name])
    $player2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $player1.name
    @p2_name = $player2.name
    @p1_hp = $player1.hit_points
    @p2_hp = $player2.hit_points
    erb :play
  end

  get '/attack' do
    @p1_name =  $player1.name
    @p2_name = $player2.name
    game = Game.new
    game.attack($player2)
    erb :attack
  end


  run! if app_file == $0

end
