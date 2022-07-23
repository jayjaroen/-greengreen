class Challenge < ApplicationRecord
  belongs_to :challenge_category
  has_many :user_challenges
  has_many :users, through: :user_challenges

end
