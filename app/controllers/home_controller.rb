class HomeController < ApplicationController
  def show

    if !(Role.where(:name => 'admin').present?)
      Role.create(:name => 'admin')
    end
  end
end
