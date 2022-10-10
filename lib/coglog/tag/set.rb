module Coglog
  module Tag
    class Set
      # @param tags [<String>] array of tags
      def initialize(tags)
        @tags = Set.new(tags)
      end

      # @param rtag [String]
      # @return [void]
      def add(rtag)
        @tags.add(rtag)
      end

      # @param rtag [String]
      # @return [Boolean]
      def include?(rtag)
        @tags.include?(rtag)
      end

      # @param rtags [Set<String>]
      # @return [Boolean]
      def include_all?(rtags)
        rtags.subset?(@tags)
      end

      # @param rtags [Set<String>]
      # @return [Boolean]
      def include_any?(rtags)
        return true if empty?

        @tags.intersect?(rtags)
      end

      # @param rtags [Set<String>]
      # @return [Boolean]
      def subset?(rtags)
        return true if empty?

        @tags.subset?(rtags)
      end

      # @param rtag [String]
      # @return [Boolean]
      def exclude?(rtag)
        !include?(rtag)
      end

      # @return [Boolean]
      def empty?
        @tags.empty?
      end
    end
  end
end
