class UsersController < ApplicationController

	def index
		@users = User.all
		  # User.create(name: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', created_at: '2018-11-12 07:03:25', updated_at: '2018-11-12 07:03:25')

	end	

	def new
		@user = User.new
	end	

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			render 'new'
		end	
	end	

	def show
		@user = User.find_by(id: params[:id])
	end	

	def destroy
		@user = User.find_by(id: params[:id])
		@user.delete
		redirect_to users_path
	end	

	private

	def user_params
		params.require(:user).permit(:name)
	end	
end
