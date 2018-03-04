class Form < ApplicationRecord

attr_accessible :name, :price, :form_type_id, :properties
belongs_to :form_type
serialize :properties, Hash

validate :validate_properties

  def validate_properties
    form_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
