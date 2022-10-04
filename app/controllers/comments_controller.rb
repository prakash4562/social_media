class CommentsController < ApplicationController

  def new

  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find_by_id(params[:post_id])
    @comment = Comment.find_by_id(params[:id])
    @comment.destroy!
    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
