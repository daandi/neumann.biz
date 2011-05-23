class CreateSourcecodes < ActiveRecord::Migration
  def self.up
    create_table :sourcecodes do |t|
      t.string :tilte
      t.text :description
      t.string :langugage
      t.text :code

      t.timestamps
    end
  end

  def self.down
    drop_table :sourcecodes
  end
end
