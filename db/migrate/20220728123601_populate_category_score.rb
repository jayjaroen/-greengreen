class PopulateCategoryScore < ActiveRecord::Migration[6.1]
  def up
    UserChallengeRecord.find_each do |ucr|
      ucr.calculate_category_score
    end
  end

  def down
  end
end
