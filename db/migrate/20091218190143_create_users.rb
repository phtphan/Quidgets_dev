class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.boolean :active, :default => true
      t.string :username
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.timestamps
    end
    
    User.create(:username => "test", :email => "test@test.com", :password => "test", :password_confirmation => "test")
  end
  
  def self.down
    drop_table :users
  end
end
