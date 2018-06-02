# frozen_string_literal: true

module FactoryMethod
  module Formatters
    class HtmlFormatter < FactoryMethod::Formatters::BaseFormatter
      def generate
        "<h1>#{header}</h1>"
      end
    end
  end
end
