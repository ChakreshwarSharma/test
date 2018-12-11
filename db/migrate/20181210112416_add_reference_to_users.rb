class AddReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :secret_code, foreign_key: true
  end
end
