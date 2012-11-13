class AddColumnsToSummaries < ActiveRecord::Migration
  def change
    add_column :summaries, :slug, :string
    add_index :summaries, :slug, unique: true
  end
end
