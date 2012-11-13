class AddColumnsToQuestionanswers < ActiveRecord::Migration
  def change
    add_column :questionanswers, :slug, :string
    add_index :questionanswers, :slug, unique: true
  end
end
