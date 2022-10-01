class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
	  @user  = User.find(params[:id])
	end

	private

	def user_params
	  params.require(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender, :avatar)
	end

end