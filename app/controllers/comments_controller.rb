class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      ActionCable.server.broadcast('comments', {comment: comment.content})
      head :ok
      # broadcast this comment to EVERYONE who is looking at the posts show page
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id)
    end
end
