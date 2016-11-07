module Kitto
  module ValueObject
    def self.included(base)
      if base.class == Module
        fail WrongExpandClass
      end
    end
  end
end
