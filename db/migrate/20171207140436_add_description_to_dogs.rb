class AddDescriptionToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :description, :text
  end
end
