class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  end

  def destroy
  	session.clear
  	redirect to root_path
  end
end
