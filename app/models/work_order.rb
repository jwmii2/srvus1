class WorkOrder < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :job_address
  belongs_to :user
end
