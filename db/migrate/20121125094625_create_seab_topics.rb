class CreateSeabTopics < ActiveRecord::Migration
  def change
    create_table :seab_topics do |t|
      t.text :description
      t.integer :position
      t.string :topic
      t.integer :subject_id

      t.timestamps
    end
  end
end
