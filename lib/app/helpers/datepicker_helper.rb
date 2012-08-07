require 'app/helpers/form_helper'

module BootstrapDatepicker
  module DatepickerHelper

    include BootstrapDatepicker::FormHelper

    # Helper method that creates a datepicker input field
    def datepicker_input(object_name, method, options = {})
      datepicker(object_name, method, options)
    end
    
    def datetime_picker_input(object_name, method, options = {})
      datepicker(object_name, method, options, true)
    end
  
  end
end