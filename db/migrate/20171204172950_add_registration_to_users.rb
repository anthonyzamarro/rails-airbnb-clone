class AddRegistrationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :registration, foreign_key: true
  end
end
