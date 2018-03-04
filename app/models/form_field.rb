class FormField < ApplicationRecord
  belongs_to :form_type
  #attr_accessible :field_type, :name, :required
end
