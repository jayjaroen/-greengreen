class Tip < ApplicationRecord
  belongs_to :challenge_category, optional: true
  has_one_attached :photo
end
