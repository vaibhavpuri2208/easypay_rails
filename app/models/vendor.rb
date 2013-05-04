class Vendor < ActiveRecord::Base
  attr_accessible :name, :password
  has_many :transactions
end
