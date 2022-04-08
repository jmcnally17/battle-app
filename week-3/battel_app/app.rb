require 'sinatra/base'
require 'sinatra/reloader' 
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hit_points
    @player_2_hp = $player_2.hit_points
    $game = Game.new($player1, $player2)
    erb :play
  end

  get '/attack' do
    $game.attack($player_2)
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hit_points
    erb :attack
  end
  
  run! if app_file == $0

end