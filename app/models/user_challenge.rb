class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_challenge_records
  validates :challenge, uniqueness: {scope: :user, message: "You have already selected this challenge" }
end
