class TipsController < ApplicationController
before_action :find_tip, only: :show

  def index
    @tips = Tip.all
    @tips = policy_scope(Tip).order(created_at: :desc)
  end

  def show
    authorize @tip
  end

  def new
    @tip = Tip.new
    authorize @tip
  end

  def create
    @tip = Tip.new(tip_params)
    authorize @tip
    if @tip.save
      redirect_to tips_path
    end
  end

  private

  def find_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.require(:tip).permit(:name, :description, :challenge_category_id, :photo)
  end

end
