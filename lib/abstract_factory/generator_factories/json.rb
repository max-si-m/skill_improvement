# frozen_string_literal: true

module AbstractFactory
  module GeneratorFactories
    class Json < AbstractFactory::GeneratorFactories::Base
      def normalize_data
        header.to_s.upcase
      end

      def report
        "{\"header\": \"#{normalize_data}\"}"
      end
    end
  end
end
