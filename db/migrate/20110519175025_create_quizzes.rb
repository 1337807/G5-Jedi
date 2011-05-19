class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.text :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :quizzes
  end
end
