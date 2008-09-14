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
#
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

          layout 'ezr'
          before_filter :ezr_setup
        end
      end

      module SingletonMethods
#        def ac_authorized_actions
#          @ac_authorized_actions
#        end
      end

      module InstanceMethods
        def ezr_render(params={})
          
          # Set this from params
          extension = ".html.erb"
          
          # Check in EZR design directories
          template_path = false
          @ezr_config[:design][:config_order].each do |directory|
            template_candidate = "#{RAILS_ROOT}/app/ezr/sites/#{directory}/views/#{params[:template]}#{extension}"
            if File.exists?(template_candidate)
              template_path = template_candidate
              break
            else
              next
            end
          end
          
          # Check in views directory
          unless template_path
            template_file = "#{RAILS_ROOT}/app/views/#{params[:template]}#{extension}"
            if File.exists?(template_file)
              template_path = template_file
            end
          end
          
          @templates_used << {:requested => params[:template], :rendered => template_path} if @debug_mode
          raise "Could not find template #{params[:template]} in any of the #{EZR[:design][:directories].inspect} directories nor in the default location app/views/#{params[:template]}." unless template_path
      
          render :file => template_path
        end
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