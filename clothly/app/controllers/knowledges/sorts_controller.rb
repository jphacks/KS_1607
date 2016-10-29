class Knowledges::SortsController < ApplicationController

  def latest
    @knowledges = Knowledge.order('created_at DESC')
  end

  def ranking
    @knowledges = Knowledge.all
  end

  def recommend
    @knowledges = Knowledge.all
  end
end
