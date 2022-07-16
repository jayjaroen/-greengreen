class Tip < ApplicationRecord
  belongs_to :challenge_category, optional: true
end
