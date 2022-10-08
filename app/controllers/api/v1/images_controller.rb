class Api::V1::ImagesController < ApplicationController
  def index
    @images = Image.all
    render json: {
      success: true,
      images: @images,
      message: 'Images are received',
      status: 200
    }
  end
end
