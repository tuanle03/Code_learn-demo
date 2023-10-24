class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :display_name
      t.string :email
      t.string :role, null: false, default: 'user'
    end
  end
end
