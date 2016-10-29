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

  def edit
    @knowledge = Knowledge.find(params[:id])
    @steps = @knowledge.steps
  end

  def update
    knowledge = Knowledge.find(params[:id])
    knowledge.update(knowledge_params)
  end

  def destroy
    knowledge = Knowledge.find(params[:id])
    if knowledge.user_id == current_user.id
      knowledge.destroy
    end
    redirect_to root_path
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
