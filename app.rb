require 'sinatra/base'

class BirthdayApp < Sinatra::Base
  get '/' do
    'Hey there! It is me, the birthday app!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
