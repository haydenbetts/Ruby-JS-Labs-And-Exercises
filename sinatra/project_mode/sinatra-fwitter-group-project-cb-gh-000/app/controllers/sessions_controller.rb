#require 'sinatra-flash'
require 'rack-flash'

class SessionsController < ApplicationController
  use Rack::Flash
  #register Sinatra::Flash

  get "/signup" do
    erb :"sessions/signup"
  end

  post "/signup" do
    if params[:name] == "" || params[:password] == ""
      flash[:blah] = "hahahah bblblb"
      redirect '/failure'
    else
      User.create(name: params[:name], password: params[:password])
      redirect '/login'
    end
  end


  get '/login' do
    erb :"sessions/login.html"
  end

  post "/login" do
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to "/account"
    else
      redirect to "/failure"
    end
  end

  get "/account" do
    @user = User.find(session[:user_id])
    erb :"users/account"
  end

  get "/failure" do
    erb :"sessions/failure"
  end

  get '/logout' do
    session.clear
    redirect "/"
  end

end
