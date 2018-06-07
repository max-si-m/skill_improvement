# frozen_string_literal: true

module FactoryMethod
  module Formatters
    class BaseFormatter
      attr_reader :header

      def initialize(header)
        @header = header
      end

      def generate
        raise 'Not implemented yet!'
      end
    end
  end
end
