class Role < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments

  validates :name, presence: true, uniqueness: true

  def init_role

        if !Roles.where(:name => "admin").present?
          Role.new(:name => 'admin')
        end 
  end
end
