class ChallengeCategory < ApplicationRecord
  has_many :tips
  has_many :rankings
end
