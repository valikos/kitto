module Kitto
  module ClassMethods

    def attributes
      @schema.to_a
    end

  end
end
