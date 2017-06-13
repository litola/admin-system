class WorkersController < ApplicationController
  before_action :authenticate_user!
  before_action :super_admin_only, :except => :show
  before_action :set_worker, only: [:show, :edit, :update, :destroy]
  
  def index
    if current_user.super?
      @workers = Worker.all
    else
      @workers = Worker.where(company_id: current_user.company_id)
    end
  end

  def show
  end

  def new
    @worker = Worker.new
  end

  def edit
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to workers_path, notice: "Worker was successfully created."
    else
      @errors = @worker.errors.full_messages
      render 'new'
    end
  end

  def update
    @worker.update_attributes(worker_params)
    if @worker.save
      redirect_to workers_path, notice: "Worker was successfully updated."
    else
      @errors = @worker.errors.full_messages
      render 'edit'
    end
  end

  # def destroy
  #   @worker.destroy
  #   redirect_to workers_path
  # end


private

  def super_admin_only
    unless current_user.super? || current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def set_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
    params.require(:worker).permit(:company_id, :job_id, :worker_status_id, :worker_number, :first_name, :second_name, :first_lastname, :second_lastname, :dob, :street, :number, :neighborhood, :city, :zip, :code, :country, :curp, :phone, :cellphone, :marital_status, :cartilla_militar, :matricula_cartilla, :vigencia_cartilla, :porte_arma, :numero_porte_arma, :licencia_conducir, :matricula_licencia_conducir, :seguro_social, :dad_name, :mother_name, :spouse_name, :spouse_phone, :day_of_entry, :daily_income, :extra_hour)
  end

end
