# Module that provide model behavior for a class
module Kitto
  module Model
    def self.included(base)
      if base.class == Module
        fail WrongExpandClass
      end
    end
  end
end
