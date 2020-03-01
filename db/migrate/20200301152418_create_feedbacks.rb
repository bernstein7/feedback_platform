class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.references :experience, null: false, foreign_key: true, index: true
    end
  end
end
