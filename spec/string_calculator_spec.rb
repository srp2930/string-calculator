require 'calculator'

describe Calculator do

  subject (:calculator) { described_class.new }

  describe '#add' do
    it 'should return zero for an empty string' do
      expect(subject.add("")).to eq 0
    end

    it 'should return the number if only one number is given' do
      expect(subject.add("1")).to eq 1
    end

    it 'should return the sum of two numbers' do
      expect(subject.add("1,2")).to eq 3
    end

    it 'should return the sum of several numbers' do
      expect(subject.add("1,2,3,4,5,6")).to eq 21
    end

    it 'should return the correct sum when \n is included in the string of numbers' do
      expect(subject.add("1\n2,3")).to eq 6
    end
  end
end
