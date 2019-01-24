require 'sinatra/base'
require_relative './lib/user'

class BirthdayApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/bday' do
    $user = User.new(params[:name], params[:day], params[:month])
    redirect '/message'
  end

  get '/message' do
    @name = $user.name
    @days = $user.days_until_bday
    erb :message
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
