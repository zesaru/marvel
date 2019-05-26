class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :description
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
