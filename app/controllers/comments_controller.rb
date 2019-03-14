class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_comment, only: [:show, :destroy]
  def show
  end
  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id

      if @comment.save
        redirect_to post_path(@post)
      else
        render 'new'
      end
  end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post)
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
        # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end
end
