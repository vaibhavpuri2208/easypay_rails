class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :vendor_id
      t.integer :amount
      t.string :items

      t.timestamps
    end
  end
end
