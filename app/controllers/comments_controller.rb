class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'snippets',
        comment: @comment.content,
        user: @comment.user

      head :ok
    #   format.html { redirect_to @comment.post, notice: 'Comment was successfully created.' }
    #   format.json { render action: 'show', status: :created, location: @comment }
    # else
    #   format.html { render action: 'new' }
    #   format.json { render json: @comment.errors, status: :unprocessable_entity }
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
