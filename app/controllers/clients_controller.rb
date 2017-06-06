class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :super_admin_only
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.super?
      @clients = Client.all
    else
      @clients = Client.where(company_id: current_user.company_id)
    end
    # respond_to do |format|
    #   format.html
    #   format.json { render :json => @companies }
    # end
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path, notice: "Client was successfully created."
    else
      @errors = @client.errors.full_messages
      render 'new'
    end
  end

  def update
    @client.update_attributes(client_params)
    if @client.save
      redirect_to clients_path, notice: "Client was successfully updated."
    else
      @errors = @client.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

private

  def super_admin_only
    unless current_user.super? || current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :phone, :rfc, :street, :number, :neighborhood, :city, :zipcode, :country, :contact, :contact_number, :company_id)
  end

end