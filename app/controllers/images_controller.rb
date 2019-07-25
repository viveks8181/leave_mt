class ImagesController < ApplicationController
	# def new
 #    @image = @imageable.images.new
 #  end

  def create
    @image = @imageable.images.new image_params
    @image.save
    redirect_to @imageable, notice: "Your note was successfully posted."
  end

  private

    def image_params
      params.require(:image).permit(:avatar)
    end
end
