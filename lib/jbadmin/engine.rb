require 'rubygems'
require 'font-awesome-sass'
require 'tilt/haml'
require 'jquery-rails'
require 'gravatar_image_tag'
require 'breadcrumbs_on_rails'

module Jbadmin
  class Engine < ::Rails::Engine

    initializer 'jbadmin.assets.precompile' do |app|
      app.config.assets.precompile += %w( jbadmin/theme.css jbadmin/theme.js jbadmin/login.css )
    end

  end

  # Configuration/initializer attributes and default values
  class << self
    mattr_accessor :site_title,
                   :breadcrumb_separator

    self.site_title = 'JB Admin'
    self.breadcrumb_separator = ' &raquo; '
  end

  def self.setup
    yield self
  end

end
