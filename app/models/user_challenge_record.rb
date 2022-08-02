class UserChallengeRecord < ApplicationRecord
  belongs_to :user_challenge
  has_one :user, through: :user_challenge
  has_one :challenge, through: :user_challenge
  after_create :calculate_category_score
  scope :with_user_challenges, -> { includes(:user_challenge) }
  scope :of_user, ->(user) { with_user_challenges.where(user_challenge: {user_id: user.id}) }
  scope :group_by_date, -> { group(:date) }
  scope :with_challenge, -> { includes(:challenge) }

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
