# frozen_string_literal: true

require_relative '../../../lib/factory_method/report'

RSpec.describe FactoryMethod::Report do
  describe '#generate' do
    let(:header) { 'Dummy header' }
    subject { FactoryMethod::Report.new(header, formatter: formatter).generate }

    context 'JSON formatter' do
      let(:formatter) { :json }

      it { is_expected.to eql "{\"header\": \"#{header}\"}" }
    end

    context 'HTML formatter' do
      let(:formatter) { :html }

      it { is_expected.to eql "<h1>#{header}</h1>" }
    end
  end
end
