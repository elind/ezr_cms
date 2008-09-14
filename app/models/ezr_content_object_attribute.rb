class EzrContentObjectAttribute < ActiveRecord::Base
  belongs_to :content_object, :class_name => "EzrContentObject", :foreign_key => "ezr_content_object_id"
  
  def to_s
    value.to_s
  end
  
  def value
    send("#{atype}_value")
  end
end
