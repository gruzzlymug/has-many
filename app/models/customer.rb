class Customer < ActiveRecord::Base
  has_many :work_orders
  has_many :technicians, through: :work_orders
end
