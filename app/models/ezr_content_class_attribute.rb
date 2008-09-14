class EzrContentClassAttribute < ActiveRecord::Base
  belongs_to :content_class, :class_name => "EzrContentClass", :foreign_key => :ezr_content_class_id
  
  validates_presence_of :identifier, :display_name
  validates_uniqueness_of :identifier

  def to_s
    display_name
  end
end
