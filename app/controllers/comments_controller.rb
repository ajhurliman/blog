class CommentsController < ApplicationController
  before_action :set_comment_and_post, only: [:destroy]

  def create
    @post = Post.find(params[:post_id])
    if @post.comments.create(comment_params)
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      redirect_to @post, alert: 'Error creating comment', notice: @post.errors.full_messages
    end
  end

  def destroy
    @comment.destroy
    redirect_to @post, notice: 'Comment was successfully deleted.'
  end

  private

  def set_comment_and_post
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:author, :body, :email)
  end

end
