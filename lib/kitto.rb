require 'kitto/version'
require 'kitto/model'
require 'kitto/value_object'

module Kitto

  Error = Class.new(StandardError)
  WrongExpandClass = Class.new(Kitto::Error)
end
