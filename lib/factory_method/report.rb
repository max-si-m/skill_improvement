# frozen_string_literal: true

require_relative 'formatters/base_formatter'
require_relative 'formatters/html_formatter'
require_relative 'formatters/json_formatter'

module FactoryMethod
  class Report
    attr_reader :formatter

    def initialize(header, formatter: :json)
      @formatter = select_formatter(formatter || :json, header)
    end

    def generate
      formatter.generate
    end

    protected

    def select_formatter(formatter, header)
      if formatter == :json
        FactoryMethod::Formatters::JsonFormatter.new(header)
      else
        FactoryMethod::Formatters::HtmlFormatter.new(header)
      end
    end
  end
end
