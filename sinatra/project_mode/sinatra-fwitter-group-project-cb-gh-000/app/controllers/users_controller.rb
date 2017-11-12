class UsersController < ApplicationController

  get '/users' do
    "You are logged in as #{session[:user_id]}"
  end

end
