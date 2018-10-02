module UserHelper
	def user_path
		if request.path.include?("#{current_user.id}")
			link_to('Add a match here', new_game_path)
		end
	end
end
