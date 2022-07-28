class CategoryScore < ApplicationRecord
  belongs_to :user
  belongs_to :challenge_category
end
