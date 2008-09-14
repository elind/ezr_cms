class EzrContentObject < ActiveRecord::Base

  has_many :c_attributes, :class_name => "EzrContentObjectAttribute"

  def [](key)
    res = c_attributes.select {|a| a.identifier == key.to_s}
    
    if res.empty?
      nil
    else
      attr = res.first
      attr.send("#{attr.atype}_value")
    end
  end
end
