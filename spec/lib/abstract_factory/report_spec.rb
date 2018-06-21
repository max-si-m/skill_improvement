# frozen_string_literal: true

require_relative '../../../lib/abstract_factory/report_generator'

RSpec.describe AbstractFactory::ReportGenerator do
  describe '#generate' do
    let(:header) { 'Dummy header' }
    subject { AbstractFactory::ReportGenerator.new(report_generator).generate }

    context 'JSON formatter' do
      let(:report_generator) { AbstractFactory::GeneratorFactories::Json.new(header) }

      it { is_expected.to eql "{\"header\": \"#{header.upcase}\"}" }
    end

    context 'HTML formatter' do
      let(:report_generator) { AbstractFactory::GeneratorFactories::Html.new(header) }

      it { is_expected.to eql "<h1><b>#{header}</b></h1>" }
    end
  end
end
