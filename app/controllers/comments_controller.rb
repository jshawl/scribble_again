class CommentsController < ApplicationController

  def new
  end

  def create
    @post = Post.find(params[:id])
    @comment = @post.comment.create(comment_params)

    return_to post_path(post)
  end

private
  def comment_params
    params.require(:comment).permit(:title, :text)
  end
end
