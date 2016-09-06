require 'calculator'

describe Calculator do

  subject (:calculator) { described_class.new }

  describe '#add' do
    it 'should return zero for an empty string' do
      expect(subject.add('')).to eq 0
    end

    it 'should return the number if only one number is given' do
      expect(subject.add('1')).to eq 1
    end

    it 'should return the sum of two numbers' do
      expect(subject.add('1,2')).to eq 3
    end
  end
end
