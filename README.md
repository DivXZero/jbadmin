# Jbadmin
Rails plugin for admin sites

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'jbadmin', git: 'https://github.com/juliabalfour/jbadmin.git'
```

And then execute:
```bash
$ bundle
```

Run the generator to create the initializer file at `config/initializers/jbadmin.rb`. Modify this file to customize plugin behavior for your application.
```bash
$ rails g jbadmin:install
```

## Usage

For any controllers/views you wish to use the template, add:
```ruby
layout 'admin_theme'
```

Or simply include the theme files in your own layout:
```haml
= stylesheet_link_tag    'application', 'jbadmin/theme', media: 'all'
= javascript_include_tag 'application', 'jbadmin/theme'
```


## Tips and Helpers

#### Page content

The layout provides content helpers to allow further customization of each page. Simply set the inner content for any of these options from any view using `- content_for :example, 'My Content'`

- page_title - Used to set the browser tab/titlebar text (used in conjunction with site_title found in config/initializers/jbadmin.jb)
- content_title - Sets the header text found at the top of the main content area
- toolbar - Use a codeblock to generate a toolbar in the content header section

#### Breadcrumbs

Add a breadcrumb to your ApplicationController for the root path:

(Tip: use this for any controller that contains an 'index' view/method. Add action specific breadcrumbs to those methods individually/outside of the before_action method)
```ruby
class ApplicationController < ActionController::Base
  before_action :add_root_crumb
 
  private
 
  def add_root_crumb
    add_breadcrumb 'Home', root_path
  end
end
```

#### Sidebar Links

To setup your application's links, use the file created by the installer at `app/views/layouts/_sidebar_links.haml` and use the ThemeHelper methods to generate your navigation:

(Helper method takes arguments in the form of `sidebar_link(label, path, icon)` or inside of a block `sub_link(label, path)`)
```ruby
= sidebar_link 'Home', root_path, 'home'
= sidebar_link 'Bananas', bananas_path, 'phone' do
  = sub_link 'Manage', bananas_path
  = sub_link 'New', new_banana_path
```