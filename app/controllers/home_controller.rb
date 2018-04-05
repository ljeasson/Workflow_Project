class HomeController < ApplicationController
  def show

    if !(Role.where(:name => 'admin').present?)
      Role.create(:name => 'admin')
    end


    #If the user's ID is present in the system(whatever it might be), check if
    # an assignment hasn't already been created. If not, assign("hardcode") the user
    # to the admin role.
    if (User.where(id: User.where(email: "cltalmad@go.olemiss.edu")).present?)
      user = User.where(:email => "cltalmad@go.olemiss.edu").first
      admin = Role.where(:name => 'admin').first
      if !(Assignment.find_by(id: user.id).present?)
        Assignment.create(:user_id => user.id, :role_id => admin.id)
      end
    end
  end
end
