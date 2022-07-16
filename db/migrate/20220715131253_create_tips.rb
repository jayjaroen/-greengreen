class CreateTips < ActiveRecord::Migration[6.1]
  def change
    create_table :tips do |t|
      t.string :name
      t.text :description
      t.references :challenge_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
