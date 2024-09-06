# frozen_string_literal: true

require_relative('../spec_helper')

describe Stopwords::Filter do
  context 'when fed with a list of arbitrary words' do
    let(:filter) { Stopwords::Filter.new stopwords }
    let(:stopwords) { %w[A desde] }

    subject { filter }

    it('should remove the stopwords for the list of words to be filtered') {
      expect(filter.filter('desde Santurce A Bilbao'.split)).to eq %w[Santurce Bilbao]
    }
    it("should remove stopwords even if upcase and downcases doesn't match") {
      expect(filter.filter('Desde Santurce a Bilbao'.split)).to eq %w[Santurce Bilbao]
    }
  end
end
