class CreateCategoryScores < ActiveRecord::Migration[6.1]
  def change
    create_table :category_scores do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge_category, null: false, foreign_key: true
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
