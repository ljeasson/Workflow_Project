class SignaturesController < ApplicationController

  def sign

    form = params[:form_id]
    user = params[:user]
    current_si = params[:current_signer]
    current_work = params[:current_workflow]
    form_id = form.to_i
    user_id = user.to_i
    signer_id = current_si.to_i
    current_work_id = current_work.to_i

    u = User.where(:id => user_id).first
    f = Form.where(:id => form_id).first

    s = User.where(:id => signer_id).first
    w = Signature.where(:id => current_work_id).first
    Signature.create(:user_id => u.id, :form_id => f.id, :processed => 0)

    w.update(processed: 1)
  end

  def new
    form = :form_id
    user = :user
    form_id = form[1]
    user_id = user[1]

    @signature = Signature.new
    new_sign(user_id, form_id)
  end

  def create

  end

  def show
    @signature = Signature.find(params[:id])
  end

  def destroy
  end
end
