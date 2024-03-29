class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :password_hash, null: false

      t.timestamp null: false
    end
  end
end
