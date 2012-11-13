class AddColumnsToCheckpoints < ActiveRecord::Migration
  def change
    add_column :checkpoints, :slug, :string
    add_index :checkpoints, :slug, unique: true
  end
end
