class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.text :action
      t.integer :carbon_score
      t.integer :point
      t.references :challenge_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
