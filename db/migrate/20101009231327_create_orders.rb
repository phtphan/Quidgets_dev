class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.float :total
      t.references :user, :payment_method
      t.timestamps
    end
    
    User.find(1).orders.create(:total => 50.15, :payment_method_id => 1)
  end

  def self.down
    drop_table :orders
  end
end
