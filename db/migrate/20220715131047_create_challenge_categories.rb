class CreateChallengeCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :challenge_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
