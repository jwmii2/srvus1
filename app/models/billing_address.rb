class BillingAddress < ActiveRecord::Base
  attr_accessible :billing_first_name, :billing_last_name, :billing_street, :billing_street2, :billing_city,
  :billing_state, :billing_zipcode
  belongs_to :user
end
