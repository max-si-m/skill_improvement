# frozen_string_literal: true

require_relative '../../../../lib/abstract_factory/generator_factories/base'

class Dummy < AbstractFactory::GeneratorFactories::Base
end

RSpec.describe AbstractFactory::GeneratorFactories::Base do
  let(:dummy) { Dummy.new('test') }

  it '#report should be implemented' do
    expect(dummy.report).to raise_error(RuntimeError, 'Not implemented yet!')
  end

  it '#normalize_data should be implemented' do
    expect(dummy.normalize_data).to raise_error(RuntimeError, 'Not implemented yet!')
  end
end
