class Factory(T)
    def initialize
        @klass = T
    end

    def get_class
        @klass
    end
end
