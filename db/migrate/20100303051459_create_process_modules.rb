class CreateProcessModules < ActiveRecord::Migration
  def self.up
    create_table :process_modules do |t|
      t.column  :name,    :string
      t.timestamps
    end
  end

  def self.down
    drop_table :process_modules
  end
end
