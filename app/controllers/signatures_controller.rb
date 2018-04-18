class SignaturesController < ApplicationController

  def sign

  end

  def new

    form_id = params[:form_id]
    email = params[:email]
    user = User.where(:email => email).first
    @signature = Signature.create(:user_id = user.id)
  end

  def show
    @signature = Signature.find(params[:id])
  end

  def destroy
  end
end
