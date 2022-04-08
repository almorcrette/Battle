require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/testing_infrastructure' do
    "Testing infrastructure working!"
  end

  post '/names' do

    $game = Game.new(
      Player.new(params[:player1]),
      Player.new(params[:player2])
    )
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    p "Array excluding player whose turn it is #{$game.players.select { |player| player != @turn }}"
    p "Outputting $game.defending_player at the beginning of get /attack: #{$game.defending_player.name}"
    $game.attack($game.defending_player)
    erb(:attack)
  end

  run! if app_file == $0

end