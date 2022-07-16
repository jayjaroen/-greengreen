class ChallengeCategory < ApplicationRecord
  has_many :tips
  has_many :rankings
  has_many :challenges
end
