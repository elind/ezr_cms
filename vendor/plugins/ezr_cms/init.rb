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
    ## TD: Set this dynamically in from routes / Erik
    @ezr = EZR_FULL_CONFIG[:ubs]
    @debug_mode = @ezr[:env][:debug_mode]
    @templates_used = [] if @debug_mode
  end
end
