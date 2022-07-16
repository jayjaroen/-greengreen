class ChallengeCategoriesController < ApplicationController
before_action :find_challenge_category, only: :show

  def index
    @challenge_categories = ChallengeCategory.all

  end

  def show

  end
  private


  def find_challenge_category
    @challenge_category = ChallengeCategory.find(params[:id])
  end
end
