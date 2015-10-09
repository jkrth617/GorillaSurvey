class CreateChoices < ActiveRecord::Migration
  def change
      create_table :choices do |t|
      t.string :body, null: false
      t.integer :question_id, null: false

      t.timestamp null: false
    end
  end
end
