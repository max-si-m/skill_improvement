# frozen_string_literal: true

require_relative 'generator_factories/base'
require_relative 'generator_factories/html'
require_relative 'generator_factories/json'

module AbstractFactory
  class ReportGenerator
    attr_reader :generator_factory

    def initialize(generator_factory)
      @generator_factory = generator_factory
    end

    def generate
      generator_factory.normalize_data
      generator_factory.report
    end
  end
end

generator_factory = AbstractFactory::GeneratorFactories::Html.new('some long string')
p AbstractFactory::ReportGenerator.new(generator_factory).generate
