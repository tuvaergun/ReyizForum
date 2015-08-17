class UsersController < ApplicationController
  def edit
  end

  def edit_profile
  	
  end

  

  def update_profile
	  @user = current_user.update( user_params )
	  redirect_to users_edit_profile_path, notice: 'Profil resmi başarıyla yüklendi.' 
	end

	private
	def user_params
	  params.require(:user).permit(:avatar)
	end

end
