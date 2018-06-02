# frozen_string_literal: true

module FactoryMethod
  module Formatters
    class JsonFormatter < FactoryMethod::Formatters::BaseFormatter
      def generate
        "{\"header\": \"#{header}\"}"
      end
    end
  end
end
