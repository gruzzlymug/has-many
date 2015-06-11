class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name)
  end
end
