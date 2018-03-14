require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ship].each do |ship|
        @ship = Ship.new(ship)
      end

      @ships = ship.all

      erb :show
    end

  end
end
