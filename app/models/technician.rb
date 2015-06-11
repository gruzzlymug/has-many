class Technician < ActiveRecord::Base
  has_many :work_orders
  has_many :customers, through: :work_orders
end
