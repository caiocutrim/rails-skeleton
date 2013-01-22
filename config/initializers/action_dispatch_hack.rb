raise "Check this and remove hack" if Rails.version >= "4.0.0"

class ActionDispatch::Routing::Mapper
  module HttpHelpers
    def patch(*args, &block)
      map_method(:patch, *args, &block)
    end

    def options(*args, &block)
      map_method(:options, *args, &block)
    end
  end

  module Resources
    RESOURCE_OPTIONS << :param

    class Resource
      def param
        options.fetch(:param, :id)
      end

      def member_scope
        "#{path}/:#{param}"
      end

      def nested_param
        :"#{singular}_#{param}"
      end

      def nested_scope
        "#{path}/:#{nested_param}"
      end
    end
  end
end

