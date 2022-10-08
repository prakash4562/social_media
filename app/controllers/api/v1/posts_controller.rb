class Api::V1::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.where(["user_id = :id or post_tag = :tag", { id: current_user.id, tag: 'Public'}])
    render json: {
      success: true,
      length: @posts.length,
      data: @posts,
      message: 'Data received successfully',
      status: 200
    }
  end
end