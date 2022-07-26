class RankingsController < ApplicationController
  def index
    @users = User.all
    @rankings = Ranking.all
    @ranking = policy_scope(Ranking).order(created_at: :desc)
  end
end
