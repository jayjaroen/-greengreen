class ChallengeCategory < ApplicationRecord
  has_many :tips
  has_many :rankings
  has_many :challenges
  has_many :user_challenges, through: :challenges
  has_many :user_challenge_records, through: :user_challenges
  has_one_attached :photo


end
