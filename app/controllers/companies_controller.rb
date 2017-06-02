class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :super_only, :except => :show

  def index
    @companies = Company.all
  end

private

  def super_only
    unless current_user.super?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end