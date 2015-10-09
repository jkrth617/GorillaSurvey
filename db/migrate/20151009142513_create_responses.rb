class CreateResponses < ActiveRecord::Migration
  def change
      create_table :responses do |t|
      t.integer :choice_id, null: false
      t.integer :user_id, null: false

      t.timestamp null: false
    end
  end
end
