class Transaction < ActiveRecord::Base
  attr_accessible :amount, :items, :vendor_id
  belongs_to :vendor
end
