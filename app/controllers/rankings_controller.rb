class RankingsController < ApplicationController
  def index
    @users = User.all
    @ranking = policy_scope(Ranking).order(created_at: :desc)
    @category_scores = CategoryScore.all
  end


end
