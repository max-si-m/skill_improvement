# frozen_string_literal: true

module AbstractFactory
  module GeneratorFactories
    class Base
      attr_reader :header

      def initialize(header)
        @header = header
      end

      def normalize_data
        raise 'Not implemented yet!'
      end

      def report
        raise 'Not implemented yet!'
      end
    end
  end
end
