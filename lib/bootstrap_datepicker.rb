# BootstrapDatepicker
require "app/helpers/datepicker_helper.rb"
require "app/helpers/form_helper.rb"
require "engine.rb"

module BootstrapDatepicker
  class Railtie < Rails::Railtie
    initializer "BootstrapDatepicker" do
      ActionController::Base.helper(BootstrapDatepicker::DatepickerHelper)
      ActionView::Helpers::FormHelper.send(:include, BootstrapDatepicker::FormHelper)
      ActionView::Base.send(:include, BootstrapDatepicker::DatepickerHelper)
      ActionView::Helpers::FormBuilder.send(:include,BootstrapDatepicker::FormBuilder)
    end
  end
end
