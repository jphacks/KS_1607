class CommentsController < ApplicationController
  before_action :set_knowledge

  def create
    Comment.create(comment_params)
    @comments = @knowledge.comments
    @comments.reload
  end

  private

  def set_knowledge
    @knowledge = Knowledge.find(params[:knowledge_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, knowledge_id: params[:knowledge_id])
  end
end
