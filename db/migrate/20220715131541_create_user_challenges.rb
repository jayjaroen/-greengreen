class CreateUserChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :user_challenges do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.integer :total_score
      t.string :date

      t.timestamps
    end
  end
end
