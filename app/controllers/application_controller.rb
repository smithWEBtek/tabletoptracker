class ApplicationController < ActionController::Base
	helper_method :current_user, :logged_in?, :require_login

 	def current_user
 		@current_user ||= User.find_by(id: session[:user_id])
 	end

 	def logged_in?
 		!!current_user
 	end

 	def require_login
		if !logged_in?
			flash[:notice] = "You must be logged in to add a game."
			redirect_to root_path
		end
	end	

end
