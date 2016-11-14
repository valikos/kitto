require 'kitto/version'

require 'kitto/attribute'
require 'kitto/class_methods'
require 'kitto/instance_methods'

require 'kitto/model'
require 'kitto/value_object'

module Kitto
  Error = Class.new(StandardError)
  WrongExpandClass = Class.new(Kitto::Error)

  # def self.model
  # end

  # def self.value_object
  # end
end
