require "gotcha/version"

module Gotcha

  class Capsule
    def initialize list
      @list = list
    end

    def list
      @list
    end
  end

  class InfiniteCapsule < Capsule
    def run
      @list.sample
    end
  end

  class LimitedCapsule < Capsule
    def run
      item = @list.sample
      @list.delete item
      item
    end
  end

end
