module Mongoid
  module Geospatial
    # Circle
    #
    class Circle < GeometryField
      attr_accessor :center, :radius

      def point
        Point.new(*self[0])
      end
      
      alias_method :center, :point

      def radius
        self[1]
      end
    end
  end
end
