class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text :body
      t.string :author
      t.integer :rating

      t.timestamps
    end
  end
end
