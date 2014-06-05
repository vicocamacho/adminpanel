module Adminpanel
  class Auth < ActiveRecord::Base
    include Adminpanel::Base

    def self.form_attributes
      [
        {
          'name' => {
            'type' => 'text_field',
            'label' => 'Cuenta:'
          }
        },
        {
          'value' => {
            'type' => 'wysiwyg_field',
            'show' => 'show',
            'label' => 'Access Key'
          }
        },
        {
          'key' => {
            'type' => 'text_field',
            'show' => 'show',
            'label' => 'Llave'
          }
        }
      ]
    end

    def self.display_name
      'Cuenta'
    end
  end
end