class CreateSeabSubTopics < ActiveRecord::Migration
  def change
    create_table :seab_sub_topics do |t|
      t.string :topic
      t.integer :position
      t.integer :seab_topic_id

      t.timestamps
    end
  end
end
