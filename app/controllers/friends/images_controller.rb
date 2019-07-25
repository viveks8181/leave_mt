class Friends::ImagesController < ImagesController
	before_action :set_imageable

	private

	def set_imageable
		@imageable = Friend.find_by(id: params[:friend_id])
	end	
end	