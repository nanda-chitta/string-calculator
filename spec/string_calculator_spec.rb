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
    end
  end
end
