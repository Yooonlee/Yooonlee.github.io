# Compatibility shim for legacy Jekyll 3.9/Liquid 4 on Ruby >= 3.2.
# Ruby removed taint/untrust APIs; Liquid 4 still calls them.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end

    def taint
      self
    end

    def untrusted?
      false
    end

    def untrust
      self
    end

    def trust
      self
    end
  end
end
