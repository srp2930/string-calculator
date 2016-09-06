require 'calculator'

describe Calculator do

  subject (:calculator) { described_class.new }

  describe '#add' do
    it 'should return zero for an empty string' do
      expect(subject.add("")).to eq 0
    end
  end
end
