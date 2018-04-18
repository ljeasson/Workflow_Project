class HomeController < ApplicationController
  def show

    if !(Role.where(:name => 'admin').present?)
      Role.create(:name => 'admin')
    end

    if !(Role.where(:name => 'Undergrad Committee').present?)
      Role.create(:name => 'Undergrad Committee')
    end

    if !(Role.where(:name => 'Grad Committee').present?)
      Role.create(:name => 'Grad Committee')
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

    if (User.where(id: User.where(email: "talmadge12@gmail.com")).present?)
      user = User.where(:email => "talmadge12@gmail.com").first
      admin = Role.where(:name => 'Undergrad Committee').first
      if !(Assignment.find_by(id: user.id).present?)
        Assignment.create(:user_id => user.id, :role_id => admin.id)
      end
    end

    if (User.where(id: User.where(email: "clt@olemiss.edu")).present?)
      user = User.where(:email => "clt@olemiss.edu").first
      admin = Role.where(:name => 'Grad Committee').first
      if !(Assignment.find_by(id: user.id).present?)
        Assignment.create(:user_id => user.id, :role_id => admin.id)
      end
    end


  end
end
