class HomeController < ApplicationController
  def login
    # get client ip
    ip = request.remote_ip
    
    # save new ip
    user = User.find_by_ip(ip) || User.new(ip: ip)
    user.save # save user data

    # store ip in session
    session[:user_id] = user.id

    # redirect to posts index
    redirect_to posts_url
  end
end
