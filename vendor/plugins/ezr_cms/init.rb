#require 'ezr_cms'
require 'ezr_controller'

#ActiveRecord::Base.class_eval do
#  include L2::RESTfulBehaviors::Authorize
#end

ActionController::Base.class_eval do
  include L2::EZR::CMSController
end

ActionController::Base.class_eval do
  def ezr_setup
    ## TD: Set this dynamically from routes / Erik
    @current_site_access = :ubs_en
    
    config_order = EZR_GLOBAL_CONFIG[@current_site_access][:config_order]
    @ezr_config = {:design => {:config_order => config_order}}
    
    # Merge config files in the correct order
    for site_access in config_order.reverse
      if temp = EZR_FULL_CONFIG[site_access.to_sym]
        @ezr_config.merge!(temp)
      end
    end

    # Set view paths to reflect the current site setting
    self.prepend_view_path([RAILS_ROOT + "/app/ezr/system/views"])
    for site_access in @ezr_config[:design][:config_order].reverse
      self.prepend_view_path([RAILS_ROOT + "/app/ezr/sites/#{site_access}/views"])
    end

    # Set request global switches
    @debug_mode = @ezr_config[:env][:debug_mode]
  end
end
