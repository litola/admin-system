class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :super_only, :except => :show
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
    # respond_to do |format|
    #   format.html
    #   format.json { render :json => @companies }
    # end
  end

  def show
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, notice: "Company was successfully created."
    else
      @errors = @company.errors.full_messages
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

private

  def super_only
    unless current_user.super?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :rfc, :street, :number, :neighborhood, :city, :zipcode, :country, :phone, :contact, :contact_number)
  end

end
