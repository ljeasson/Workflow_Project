class FormsController < ApplicationController
  before_action :require_login
  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new(form_type_id: params[:form_type_id])

  end

  def edit
    @form = Form.find(params[:id])
  end

  def create

    #if params[:form].try(:fetch, :properties, {}).kind_of?(Hash)
    #  properties_keys = params[:form].try(:fetch, :properties, {}).keys
    #elseif params[:form].try(:fetch, :properties, {}).kind_of?(Array)
    #  properties_keys = params[:form].try(:fetch, :properties, {}).map
    #end

    #@form = Form.new(params[:form].permit({:properties})
    @form = Form.new(params[:form].permit!)
    if @form.save
      redirect_to @form, notice: 'Form was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @form = Form.find(params[:id])
    if @form.update_attributes(params[:form].permit!)
      redirect_to @form, notice: 'Form was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy
    redirect_to forms_url
  end

  private

  def form_params

    load_params = params.require(:form).permit(:name)
    load_params[:properties] = params[:form][:properties]
    load_params.permit!
  end

  def require_login
    unless !current_user.nil?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path # halts request cycle
    end
  end
end
