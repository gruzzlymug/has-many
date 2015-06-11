class WorkOrder < ActiveRecord::Base
  # http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association
  belongs_to :technician
  belongs_to :customer
end
