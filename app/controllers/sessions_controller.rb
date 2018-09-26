class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    
  	# @user = User.find_or_create_by(uid: auth['uid']) do |u|
   #    u.name = auth['info']['name']
   #    u.email = auth['info']['email']
   #    u.image = auth['info']['image']
   #  end

  	if @user && @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
  		redirect_to user_path(@user)
  	else
      flash[:alert] = "Invalid email/password combination"
      redirect_to root_path
  	 end
  end

  def destroy
  	session.clear
  	redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
