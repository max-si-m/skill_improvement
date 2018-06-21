# frozen_string_literal: true

module AbstractFactory
  module GeneratorFactories
    class Html < AbstractFactory::GeneratorFactories::Base
      def normalize_data
        "<b>#{header}</b>"
      end

      def report
        "<h1>#{normalize_data}</h1>"
      end
    end
  end
end
