class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
#      t.references :user, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
