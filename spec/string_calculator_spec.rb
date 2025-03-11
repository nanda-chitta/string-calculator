# frozen_string_literal: true

require 'config/support'

RSpec.describe StringCalculator, type: :module do
  describe 'StringCalculator' do
    it 'should defined as "constant"' do
      expect(defined?(StringCalculator)).to eq('constant')
    end
  end

  describe '.add' do
    it 'should respond_to method' do
      expect(StringCalculator.respond_to?(:add)).to eq(true)
    end

    it 'should return 0 for empty string' do
      expect(add('')).to eq(0)
    end

    context 'When single number' do
      it 'return 3 if pass "3" string as argument' do
        expect(add('3')).to eq(3)
      end
    end
  end
end
