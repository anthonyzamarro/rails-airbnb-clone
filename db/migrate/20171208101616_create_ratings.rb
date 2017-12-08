class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :dog, foreign_key: true
      t.timestamps
    end
  end
end
