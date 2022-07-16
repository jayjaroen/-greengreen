class CreateUserChallengeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :user_challenge_records do |t|
      t.string :date
      t.references :user_challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
