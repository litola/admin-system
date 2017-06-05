class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :super_only
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
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
    @client = Client.new(company_params)
    if @client.save
      redirect_to companies_path, notice: "Client was successfully created."
    else
      @errors = @client.errors.full_messages
      render 'new'
    end
  end

  def update
    @client.update_attributes(company_params)
    if @client.save
      redirect_to companies_path, notice: "Client was successfully updated."
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

  def super_only
    unless current_user.super?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def set_company
    @client = Client.find(params[:id])
  end

  def client_params
    # params.require(:company).permit(:name, :rfc, :street, :number, :neighborhood, :city, :zipcode, :country, :phone, :contact, :contact_number)
  end

end