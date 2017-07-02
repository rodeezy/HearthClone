class CommentsController < ApplicationController
  before_action :require_logged_in

  def create
    @comment = current_user.comments.new(params[:comment][:body])

    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(params[:comment][:body])
      render :show
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    render json: @comment.destroy
  end

  private


  # def comment_params
  #   params.require(:comment).permit(:body)
  # end
  #seems silly for just one
end
