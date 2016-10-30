class LikesController < ApplicationController
  before_action :set_knowledge

  def create
    @knowledge.likes.create(like_params)
  end

  def destroy
    @knowledge.likes.find_by(knowledge_id: params[:knowledge_id], user_id: current_user).destroy
    @knowledge.reload
  end

  private
  def set_knowledge
    @knowledge = Knowledge.find(params[:knowledge_id])
  end

  def like_params
    params.permit(knowledge_id: params[:knowledge_id]).merge(user_id: current_user.id)
  end

end
