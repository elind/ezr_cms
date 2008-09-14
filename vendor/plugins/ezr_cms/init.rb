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
    
    for site_access in config_order.reverse
      if temp = EZR_FULL_CONFIG[site_access.to_sym]
        @ezr_config.merge!(temp)
      end
    end
    @debug_mode = @ezr_config[:env][:debug_mode]
    @templates_used = [] if @debug_mode
  end
end
