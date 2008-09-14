class EzrContentClass < ActiveRecord::Base

  has_many :cc_attributes, :class_name => "EzrContentClassAttribute"
  has_many :content_objects, :class_name => "EzrContentObject", :foreign_key => "ezr_content_object_id"
  
  validates_presence_of :identifier, :display_name
  validates_uniqueness_of :identifier
  
  def to_s
    display_name
  end
end
