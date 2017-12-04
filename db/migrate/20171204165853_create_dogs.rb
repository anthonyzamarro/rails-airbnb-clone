class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :species
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
