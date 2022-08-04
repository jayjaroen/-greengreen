class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :emission_20
      t.string :emission_17
      t.string :per_cap_20
      t.string :per_cap_17
      t.string :pop_22

      t.timestamps
    end
  end
end
