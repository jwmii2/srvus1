class JobAddress < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :work_order
end
