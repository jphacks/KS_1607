class KnowledgesController < ApplicationController
  before_action :authenticate_user!

  def new
    @knowledge = Knowledge.new
    @knowledge.steps.build
  end

  def show
    @knowledge = Knowledge.find(params[:id])
    @steps = @knowledge.steps
    @user = @knowledge.user
  end

  def create
    @knowledge = Knowledge.create(knowledge_params)
  end

  private
  def knowledge_params
    params.require(:knowledge).permit(
      :title,
      :image,
      :detail,
      :hint,
      :concept,
      steps_attributes: [:id, :count, :sub_image, :caption, :knowledge_id]
      ).merge(user_id: current_user.id)
  end

end
