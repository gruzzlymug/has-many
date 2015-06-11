class WorkOrdersController < ApplicationController
  def index
    @work_orders = WorkOrder.all
  end

  def new
    @work_order = WorkOrder.new
  end

  def create
    @work_order = WorkOrder.create(work_order_params)
    redirect_to work_orders_path
  end

  private

  def work_order_params
    params.require(:work_order).permit(:title, :technician_id, :customer_id)
  end
end
