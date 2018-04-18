class Comment < ApplicationRecord
  belongs_to :form
  has_one :user
end
