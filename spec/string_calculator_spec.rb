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

    it 'should return the sum of several numbers' do
      expect(subject.add("1,2,3,4,5,6")).to eq 21
    end

    it 'should return the correct sum when \n is included in the string of numbers' do
      expect(subject.add("1\n2,3")).to eq 6
    end

    it 'should return correct sum with different delimiters' do
      expect(subject.add("//;\n1;2")).to eq 3
    end

    it 'should reject negative numbers in the addition process' do
      expect{subject.add("-1,2,3,-4")}.to raise_error('negatives not allowed: -1, -4')
    end

    it 'edge case - using hyphens as a delimiter should not fail or be mistaken for negatives' do
      expect(subject.add("//-\n1--2-3-4")).to eq 10
    end

    it 'edge case - using letters as delimiters should not fail' do
      expect(subject.add("//a\n1a2a3a4")).to eq 10
    end
  end
end
