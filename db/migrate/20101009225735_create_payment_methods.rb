class CreatePaymentMethods < ActiveRecord::Migration
  def self.up
    create_table :payment_methods do |t|
      t.string :name
      t.timestamps
    end
    
    PaymentMethod.create(:name => "Credit Card")
    PaymentMethod.create(:name => "Paypal")
    PaymentMethod.create(:name => "Check")        
  end

  def self.down
    drop_table :payment_methods
  end
end
