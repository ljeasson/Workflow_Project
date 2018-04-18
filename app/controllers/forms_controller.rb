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

    @form = Form.new(params[:form].permit!)
    if @form.save
      redirect_to @form, notice: 'Form was successfully created.'
    else
      render action: "new"
    end
    add_uid
  end

  def insert_signature
  end
  
  def add_uid

    form = Form.last
    Form.update(form.id, :user_id => current_user.id)
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
