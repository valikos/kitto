module Kitto
  module Attribute
    def self.included(base)
      puts base.class
      base.instance_variable_set(:@schema, {})
    end

    def attributes
      @attrs ||= {}
      self.class.attributes.each do |attr|
        @attrs[attr] = instance_variable_get("@#{attr}")
      end
      @attrs
    end

    module Extensions
      def attribute(name)
        @schema.add(name.to_sym)
      end
    end
  end
end
