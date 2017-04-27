module Jbadmin
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file 'initializer.rb', 'config/initializers/jbadmin.rb'
    end

    def copy_view_files
      layouts_path = File.expand_path('../../../../../app/views/layouts', __FILE__) + '/'
      copy_file layouts_path + '_sidebar_links.haml', 'app/views/layouts/_sidebar_links.haml'
      copy_file layouts_path + '_sidebar_search.haml', 'app/views/layouts/_sidebar_search.haml'
      copy_file layouts_path + '_header_content.haml', 'app/views/layouts/_header_content.haml'
    end
  end
end