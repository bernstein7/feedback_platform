class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :feedback, null: false, foreign_key: true, index: true
      t.references :question, null: false, foreign_key: true, index: false
      t.references :answer, null: false, foreign_key: true, index: false
      t.timestamps
    end

    add_index :responses, [:feedback_id, :question_id], unique: true
  end
end
