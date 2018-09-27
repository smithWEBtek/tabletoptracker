require 'pry'
class UsersController < ApplicationController
	before_action :require_login, only: [:show]
	before_action :set_user, only: [:show]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	
		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user.id)
		else
			flash[:notice] = "Incorrect Email or Password Parameters"
		end
	end

	def show
		if logged_in?
			set_user
			@games = @user.games.all
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :uid, :image)
	end

	def set_user
		@user = User.find(params[:id])	
	end

	def require_login
		if !logged_in?
			redirect_to root_path
		end
	end

end
