require 'rails/generators'

module BootstrapDatepicker
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Bootstrap Datepicker to Asset Pipeline"

      def add_assets

        if File.exist?('app/assets/javascripts/application.js')
          insert_into_file "app/assets/javascripts/application.js", "//= require jquery-ui\n", :after => "jquery_ujs\n"
          insert_into_file "app/assets/javascripts/application.js", "//= require bootstrap-datepicker\n", :after => "jquery-ui\n"
        end

        if File.exist?('app/assets/stylesheets/bootstrap_and_overrides.css.less')
          # Add our own require:
          content = File.read("app/assets/stylesheets/bootstrap_and_overrides.css.less")
          if content.match(/@import \"datepicker\"\;/)
            # Good enough - that'll include our bootstrap_and_overrides.css.less
          else
            style_require_block = "@import \"datepicker\";\n"
            insert_into_file "app/assets/stylesheets/bootstrap_and_overrides.css.less", style_require_block, :after => "@import \"twitter/bootstrap/bootstrap\";\n"
          end
        end

      end

      def add_bootstrap
        copy_file "bootstrap-datepicker.css.less", "app/assets/stylesheets/bootstrap-datepicker.css.less"
        copy_file "bootstrap-datepicker.css", "app/assets/stylesheets/bootstrap-datepicker.css"
      end

    end
  end
end