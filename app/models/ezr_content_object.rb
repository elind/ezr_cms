class EzrContentObject < ActiveRecord::Base

  belongs_to :content_class, :class_name => "EzrContentClass", :foreign_key => "ezr_content_class_id"
  
  has_many :c_attributes, :class_name => "EzrContentObjectAttribute"

  def data(key)
    res = c_attributes.select {|a| a.identifier == key.to_s}
    
    if res.empty?
      nil
    else
      attr = res.first
      attr.value
    end
  end
end
