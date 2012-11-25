class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :topic
      t.integer :subject_id
      t.integer :seab_sub_topic_id
      t.integer :position
      t.text :description

      t.timestamps
    end
  end
end
