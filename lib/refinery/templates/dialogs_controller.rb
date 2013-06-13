Refinery::Admin::DialogsController.class_eval do
  Refinery::Admin::DialogsController::TYPES << 'template'
  def find_iframe_src_with_template
    if @dialog_type == 'template'
      @iframe_src = refinery.insert_templates_admin_templates_path url_params.merge(:dialog => true)
    else
      find_iframe_src_without_template
    end
  end
  alias_method_chain :find_iframe_src, :template
end