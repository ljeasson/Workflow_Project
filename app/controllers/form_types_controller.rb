class FormTypesController < ApplicationController


  def index
    @form_types = FormType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form_types}
    end
  end

  def show
    @form_type = FormType.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @form_type }
    end
  end

  def new
    @form_type = FormType.new

    respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @form_types }
    end
  end

  def edit
    @form_type = FormType.find(params[:id])
  end

  def create
    @form_type = FormType.new(form_type_params)

    respond_to do |format|
      if @form_type.save
        format.html { redirect_to @form_type, notice: 'Form template was successfully created.' }
        format.json { render json: @form_type, status: :created, location: @form_type }
      else
        format.html { render action: "new" }
        format.json { render json: @form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @form_type = FormType.find(params[:id])

    respond_to do |format|
      if @form_type.update_attributes(form_type_params)
        format.html { redirect_to @form_type, notice: 'Form type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @form_type = FormType.find(params[:id])
    @form_type.destroy

    respond_to do |format|
      format.html { redirect_to form_types_url }
      format.json { head :no_content }
    end
  end

  private
  def form_type_params
    params.require(:form_type).permit(:name, :id, fields_attributes: [:name, :id, :fields_attributes, :required])
  end
end
