module Kitto
  module InstanceMethods
    module Constructor
      def initialize(attrs = {})
        self.class.attributes.each do |attr|
          instance_variable_set("@#{attr}".to_sym, attrs[attr])
        end
      end
    end
  end
end
