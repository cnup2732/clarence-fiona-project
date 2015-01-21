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
  
  get '/chinesegirl' do
    erb :asdf
  end

  get '/koreanboy' do
    erb :koreanboy
  end

  get '/koreangirl' do
    erb :koreangirl
  end

  get '/indianboy' do
    erb :indianboy
  end

  get '/indiangirl' do
    erb :indiangirl
  end

  post '/nationality' do
    puts params
    if params[:gender] == "Boy" && params[:nationality] == "Chinese"
      redirect '/chineseboy'
    elsif params[:gender] == "Girl" && params[:nationality] == "Chinese"
      redirect '/chinesegirl'
    elsif params[:gender] == "Boy" && params[:nationality] == "Korean"
      redirect '/koreanboy'
    elsif params[:gender] == "Girl" && params[:nationality] == "Korean"
      redirect '/koreangirl'
    elsif params[:gender] == "Boy" && params[:nationality] == "Indian"
      redirect '/indianboy'
    else params[:gender] == "Girl" && params[:nationality] == "Indian"
      redirect '/indiangirl'
    end
  end
end

