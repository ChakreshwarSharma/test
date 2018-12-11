class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, after: :id
    add_column :users, :last_name, :string, after: :first_name
    add_column :users, :role, :integer, limit: 1, comment: '0->user, 1-admin', default: 0
  end
end
