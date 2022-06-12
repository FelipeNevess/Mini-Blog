class CommentsController < ApplicationController
  def create
    comment = Comment.create!(comments_params)
    
    redirect_to comment.post, notice: "Comentário foi enviado com sucesso!"
  end

  private

  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end
