class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :owner
      t.string :city

      t.timestamps
    end
  end
end
