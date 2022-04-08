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
    p $game.turn.dead?
    if $game.turn.dead?
      erb(:dead)
    else
      erb(:play)
    end
  end

  get '/attack' do
    $game.attack($game.defending_player)
    erb(:attack)
  end

  # get '/dead' do
  #   erb(:dead)
  # end

  run! if app_file == $0

end