# frozen_string_literal: true

require_relative '../../../../lib/factory_method/formatters/base_formatter'

class Dummy < FactoryMethod::Formatters::BaseFormatter
end

RSpec.describe FactoryMethod::Formatters::BaseFormatter do
  describe '#generate' do
    it 'should be implemented' do
      expect(Dummy.new('test').generate).to raise_error(RuntimeError, 'Not implemented yet!')
    end
  end
end
