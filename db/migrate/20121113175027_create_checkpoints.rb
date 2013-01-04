class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :checkpoint
      t.integer :lesson_id
      t.text :description
      t.string :videourl
      t.text :objective
      t.text :question
      t.text :answer
      t.integer :position

      t.timestamps
    end
  end
end
