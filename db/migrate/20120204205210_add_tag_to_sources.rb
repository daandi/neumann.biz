class AddTagToSources < ActiveRecord::Migration
  def self.up
    add_column :sources, :tag, :string
  end

  def self.down
    remove_column :sources, :tag
  end
end
