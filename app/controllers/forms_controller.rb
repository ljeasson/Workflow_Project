class FormsController < ApplicationController
  before_action :require_login
  def index
    @forms = Form.all
  end

  def show


    @form = Form.find(params[:id])
    @user = User.order('created_at DESC')
  end

  def new
    @form = Form.new(form_type_id: params[:form_type_id])

  end

  def edit
    @form = Form.find(params[:id])
    if !((@form.user_id == current_user.id) || (current_user.role? :admin))
      redirect_to root_path
    end
  end

  def create

    @form = Form.new(params[:form].permit!)
    if @form.save
      redirect_to @form, notice: 'Form was successfully created.'
    else
      render action: "new"
    end
    add_uid
    insert_signature
  end

  def insert_signature
    form = Form.last
    user = User.where(:email => "talmadge12@gmail.com").first
    if !form.grad
      Signature.create(:form_id => form.id, :user_id => user.id, :processed => FALSE)
    end
    if form.grad
    end
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
    if !((@form.user_id == current_user.id) || (current_user.role? :admin))
      redirect_to root_path
    else
      @form.destroy
      redirect_to forms_url
    end
  end

  def finalize

    final = params[:finalize]
    final = final.to_i
    form_p = params[:form_id]
    form_id = form_p.to_i
    form = Form.where(:id => form_id).first
    form.update(finalized: 1)
    redirect_to root_path
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
      redirect_to root_path # Halts request cycle.
    end
  end
end
