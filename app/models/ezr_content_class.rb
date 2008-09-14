class EzrContentClass < ActiveRecord::Base

  has_many :cc_attributes, :class_name => "EzrContentClassAttribute"
  
  validates_presence_of :identifier, :display_name
  validates_uniqueness_of :identifier
  
end
