require 'action_controller'

module L2
  module EZR #:nodoc:
    module CMSController #:nodoc:

      def self.included(mod)
        mod.extend(ClassMethods)
      end

      module ClassMethods
        def acts_as_ezr_controller(*args)
          extend  L2::EZR::CMSController::SingletonMethods
          include L2::EZR::CMSController::InstanceMethods

#          # Default actions
#          @ac_authorized_actions = {
#            "show" => :read,
#            "edit" => :update,
#            "update" => :update,
#            "destroy" => :delete
#          }

          # Add custom actions
#          if args[0] and args[0][:custom_actions]
#            args[0][:custom_actions].each do |key, val|
#              @ac_authorized_actions[key.to_s] = args[0][:custom_actions][key]
#            end
#          end

          before_filter :ezr_setup
        end
      end

      module SingletonMethods
#        def ac_authorized_actions
#          @ac_authorized_actions
#        end
      end

      module InstanceMethods
#        def restfully_authorize
#          action = params[:action]
#          if self.class.ac_authorized_actions.include?(action)
#            instance_variable_set("@#{params[:controller].singularize}", 
#                                      Kernel.const_get(params[:controller].singularize.capitalize).find(params[:id]))
#            unless current_user.send("can_#{self.class.ac_authorized_actions[action]}?",
#                                         instance_variable_get("@#{params[:controller].singularize}"))
#                  flash[:notice] = "Access denied. You do not have access to that page."
#                  redirect_to send("#{params[:controller]}_path")
#            end
#          end
#        end
      end
    end
  end
end