class UsersController < ApplicationController
	def new
		
	end

	def create
		@user = User.new(user_params)


		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user.id)
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password_digest)
	end


end
