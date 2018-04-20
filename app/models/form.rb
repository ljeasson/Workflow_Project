class Form < ApplicationRecord

has_many :comments, :dependent => :delete_all
has_many :signatures, :dependent => :delete_all
has_one :user

belongs_to :form_type
serialize :properties, JSON

validate :validate_properties

  def validate_properties
    form_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end

end
