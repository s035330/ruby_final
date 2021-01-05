class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.references :user_group, null: false, foreign_key: true

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
