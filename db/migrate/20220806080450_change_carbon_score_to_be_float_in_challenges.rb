class ChangeCarbonScoreToBeFloatInChallenges < ActiveRecord::Migration[6.1]
  def change
    change_column :challenges, :carbon_score, :float
  end
end
