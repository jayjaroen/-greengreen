class RankingsController < ApplicationController
  def index
    @challenge_category = ChallengeCategory.find(params[:challenge_category_id])
    @rankings = @challenge_category.rankings
    @ranking = policy_scope(Ranking).order(created_at: :desc)
  end
end
