class TipsController < ApplicationController
before_action :find_tip, only: :show

  def index
    @tips = Tip.all
  end

  def show
  end

  private

  def find_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.require(:tip).permit(:name, :description, :challenge_category_id)
  end

end
