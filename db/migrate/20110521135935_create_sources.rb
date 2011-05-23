class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.string :title
      t.text :description
      t.string :language
      t.text :code

      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
