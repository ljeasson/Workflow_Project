class RolesController < ApplicationController
  def new
    @Role = Role.new(params[:role].permit!)
  end

  def create

    @Role = Role.new(params[:role].permit!)
  end

  def destroy
  end

  def update
  end

  def show
    @role = Role.find(params[:id])
  end

  def admin

    if !Roles.where(:name => "admin").present?
      @admin = Role.new(:name => 'admin')
    end
  end

end
