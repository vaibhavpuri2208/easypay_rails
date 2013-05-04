Vendor.destroy_all
Transaction.destroy_all

vendors = ['Vendor1', 'Vendor2', 'Vendor3', 'Vendor4'].map do |vendor|
  Vendor.create({:name => vendor, :password => '123'})	
end


items = { 
  "1" => [[7], [5], [6]], 
  "2" => [[27], [17], [22]], 
  "3" => [[5], [6]], 
  "4" => [[8], [6]]
}

items.each do |vendor_id, amounts|
 # transaction = Transaction.create vendor_id: vendor_id
  amounts.each do |amount|
    transaction_hash = {:vendor_id=> vendor_id, :amount=>amount.first.to_s}
    Transaction.create transaction_hash
    #vendor.items.create items: menu_item.first
  end
end

puts "#{Vendor.count} vendor are now in the database."
puts "#{Transaction.count} transactions are now in the database."