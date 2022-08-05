class ChangeNameToBeTextInReferences < ActiveRecord::Migration[6.1]
  def change
    change_column :references, :name, :text
  end
end
