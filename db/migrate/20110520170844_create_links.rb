class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :topic_id
      t.integer :difficulty_id
      t.string :url
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
