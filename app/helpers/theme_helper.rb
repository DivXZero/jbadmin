module ThemeHelper

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def active_path?(path)
    extracted_path = Rails.application.routes.recognize_path(path)
    controller = extracted_path[:controller]
    controller?(controller)
  end

  def active_action?(path)
    extracted_path = Rails.application.routes.recognize_path(path)
    action = extracted_path[:action]
    (active_path?(path) && action?(action))
  end

  def sidebar_link(label, path, icon = nil, &block)
    # If block exists, this is a parent element containing children
    if block_given?
      render 'helpers/sidebar_link_parent', {label: label, path: path, fa_icon: icon, children: capture(&block)}
    else
      render 'helpers/sidebar_link', {label: label, path: path, fa_icon: icon}
    end
  end

  def sub_link(label, path)
    render 'helpers/sidebar_link_child', {label: label, path: path}
  end

end
