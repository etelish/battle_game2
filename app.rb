require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require './lib/player'

class Battle_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1_Name])
    $player_2 = Player.new(params[:Player2_Name])
    redirect '/play'
  end

  get '/play' do
    @Player1_Name = $player_1.name
    @Player2_Name = $player_2.name
    @Player1_HP = $player_1.hit_points
    @Player2_HP = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player1_name =  $player_1.name
    @player2_name = $player_2.name
    $player_1.attack($player_2)
    erb :attack
  end


  run! if app_file == $0

end
