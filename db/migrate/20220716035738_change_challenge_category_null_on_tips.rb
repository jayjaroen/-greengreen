class ChangeChallengeCategoryNullOnTips < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tips, :challenge_category_id, true)
  end
end
