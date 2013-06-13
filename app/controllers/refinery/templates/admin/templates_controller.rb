module Refinery
  module Templates
    module Admin
      class TemplatesController < ::Refinery::AdminController

        crudify :'refinery/templates/template',
                :title_attribute => 'name', :xhr_paging => true

        before_filter :init_dialog, :only => :insert

        def insert
          search_all_templates if searching?
          find_all_templates
          paginate_templates
        end

        def dialog_preview
          @template = Template.find(params[:id].delete('template_'))
        end

        private

        def init_dialog
          @callback = params[:callback]
        end

        def paginate_templates
          @templates = @templates.paginate(:page => params[:page], :per_page => Template.per_page(true))
        end

      end
    end
  end
end
