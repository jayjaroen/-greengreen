class Ranking < ApplicationRecord
  belongs_to :challenge_category
  belongs_to :user
end
