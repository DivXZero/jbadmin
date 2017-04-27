class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin_theme'
  before_action :add_root_crumb

  private

  def add_root_crumb
    add_breadcrumb 'Home', root_path
  end
end
