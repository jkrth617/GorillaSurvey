class CreateQuestions < ActiveRecord::Migration
  def change
      create_table :questions do |t|
      t.string :name, null: false
      t.integer :survey_id, null: false

      t.timestamp null: false
    end
  end
end
