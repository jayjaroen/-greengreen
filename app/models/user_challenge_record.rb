class UserChallengeRecord < ApplicationRecord
  belongs_to :user_challenge
  after_create :calculate_category_score

  def calculate_category_score
    category = self.user_challenge.challenge.challenge_category
    challenge_score = self.user_challenge.challenge.carbon_score

    cs = CategoryScore.find_by(challenge_category: category, user: user_challenge.user)

    if cs.present?
      cs.update(score: cs.score + challenge_score)
    else
      cs = CategoryScore.create(
        user: user_challenge.user,
        challenge_category: category,
        score: challenge_score
      )
    end
  end
end
