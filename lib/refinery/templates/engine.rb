module Refinery
  module Templates
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Templates

      engine_name :refinery_templates

      initializer "register refinerycms_templates plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "templates"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.templates_admin_templates_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/templates/template',
            :title => 'name'
          }
          
        end
      end

      config.to_prepare do
        require 'refinery/templates/dialogs_controller'
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Templates)
      end
    end
  end
end
