class SignaturesController < ApplicationController

  def sign

    form = params[:form_id]
    user = params[:user]
    body = params[:body]
    name = params[:name]
    current_si = params[:current_signer]
    current_work = params[:current_workflow]
    form_id = form.to_i
    user_id = user.to_i
    signer_id = current_si.to_i
    current_work_id = current_work.to_i

    if(!form_id.is_a? Integer)
      redirect_to root_path
    end

    if((name != "") && (form_id.is_a? Integer))
      u = User.where(:id => user_id).first
      f = Form.where(:id => form_id).first

      s = User.where(:id => signer_id).first
      w = Signature.where(:id => current_work_id).first
      Signature.create(:user_id => u.id, :form_id => f.id, :processed => 0)
      Comment.create(:user_id => user_id, :name => name, :body => body, :form_id => form_id)
      w.update(processed: 1)
      redirect_to root_path
    end


  end

  def new

    @signature = Signature.new
  end

  def create

  end

  def show
    @signature = Signature.find(params[:id])
  end

  def destroy
  end
end
