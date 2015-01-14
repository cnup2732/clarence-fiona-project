require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/nationality' do
    erb :nationality
  end

  get '/chineseboy' do
    erb :chineseboy
  end

  post '/nationality' do
    puts params
    if params[:gender] == "Boy" && params[:nationality] == "Chinese"
      redirect '/chineseboy'
    end
  end

end