class Property < ActiveRecord::Base
  has_many :property_attachments
  accepts_nested_attributes_for :property_attachments

end
