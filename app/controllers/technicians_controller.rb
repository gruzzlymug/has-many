class TechniciansController < ApplicationController
  def index
  	@techs = Technician.all
  end

  def new
  	@tech = Technician.new
  end

  def create
  	@tech = Technician.create(technician_params)
  	redirect_to technicians_path
  end

  private

  def technician_params
  	params.require(:technician).permit(:name)
  end
end
