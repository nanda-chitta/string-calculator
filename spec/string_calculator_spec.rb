# frozen_string_literal: true

require 'config/support'

RSpec.describe StringCalculator, type: :module do
  describe 'StringCalculator' do
    it 'defined as "constant"' do
      expect(defined?(StringCalculator)).to eq('constant')
    end
  end

  describe '.add' do
    it 'respond_toes method' do
      expect(subject.respond_to?(:add)).to be(true)
    end

    it 'returns 0 for empty string' do
      expect(add('')).to eq(0)
    end

    context 'when single number' do
      it 'return 3 if pass "3" string as argument' do
        expect(add('3')).to eq(3)
      end

      it 'return 5 if pass "5" as argument' do
        expect(add('5')).to eq(5)
      end

      it 'return 25 if pass "25" as argument' do
        expect(add('25')).to eq(25)
      end
    end

    context 'when two numbers' do
      it 'return 3 for "1,2" as input' do
        expect(add('1,2')).to eq(3)
      end

      it 'return 17 for "12,5" as input' do
        expect(add('12,5')).to eq(17)
      end
    end

    context 'when three numbers' do
      it 'return 6 for "1,2,3" as input' do
        expect(add('1,2,3')).to eq(6)
      end

      it 'return 1170 for "200,150,208" as input' do
        expect(add('200,150,820')).to eq(1170)
      end
    end

    context 'when many numbers' do
      it "return 1500 for 100 15's" do
        expect(add((['15'] * 100).join(','))).to eq(1500)
      end
    end

    context 'when newlines as delimiters' do
      it 'return 3 for "1\n2" for the delimiter' do
        expect(add("1\n2")).to eq(3)
      end

      it 'should add for newline and comma' do
        expect(add("1\n2,3")).to eq(6)
      end
    end

    context 'when custom delimiters' do
      it 'should allow the semicolon' do
        expect(add("//;\n1;2;3")).to eq(6)
      end

      it 'should allow the letter' do
        expect(add('//x52$55@51X14')).to eq(172)
      end

      it 'should allow the special delimiter' do
        expect(add('//[***]\n1***2***3')).to eq(6)
      end

      it 'should allow the multiple delimiter' do
        expect(add('//[*][%]\n1*2%3')).to eq(6)
      end
    end

    context 'when negative numbers' do
      it 'should raise an exception for negative number' do
        expect { add('-1,\n2;3') }.to raise_error
      end
    end
  end
end
