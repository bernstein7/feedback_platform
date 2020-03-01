class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :rate, limit: 7
      t.text :body,

      t.timestamps
    end
  end
end
