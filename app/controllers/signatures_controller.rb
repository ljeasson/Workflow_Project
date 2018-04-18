class SignaturesController < ApplicationController

  def sign

  end

  def new

    form_id = params[:form_id]
    email = params[:user_id]
    form = Form.where(:id => form_id)
    user = User.where(:id => email).first

    #Needs to accept the above params.
    @signature = Signature.create(:user_id => user.id, :form_id => form_id)
  end

  def create

  end

  def show
    @signature = Signature.find(params[:id])
  end

  def destroy
  end
end
