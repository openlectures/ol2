class AddColumnsToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :slug, :string
    add_index :subjects, :slug, unique: true
  end
end
