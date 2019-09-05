require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require 'player'

$STARTHP = 100

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
    @Player1_HP = $STARTHP
    @Player2_HP = $STARTHP
    erb :play
  end

  get '/attack' do
    @player1_Name =  $player_1.name
    @Player2_Name = $player_2.name
    erb :attack
  end


  run! if app_file == $0

end
