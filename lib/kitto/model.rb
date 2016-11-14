require 'set'
# Module that provide model behavior for a class
module Kitto
  module Model
    include ::Kitto::Attribute

    def self.included(base)
      if base.class == Module
        fail WrongExpandClass
      end

      base.instance_variable_set(:@schema, Set.new)

      base.extend(ClassMethods)
      base.extend(Attribute::Extensions)
      base.send(:include, InstanceMethods::Constructor)
    end
  end
end
