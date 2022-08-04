class AddDescriptionToChallenges < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :description, :text
  end
end
