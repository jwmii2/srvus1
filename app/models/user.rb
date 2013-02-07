class User < ActiveRecord::Base
  attr_accessible :email, :password, :newsletter
  has_many :billing_addresses
  has_many :job_addresses
  has_many :work_orders
end
