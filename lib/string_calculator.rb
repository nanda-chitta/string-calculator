# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = numbers(str)
    return digits.reduce { |sum, digit| sum + digit } if digits.length > 2
    return digits[0] + digits[1] if str.include?(',')

    str.to_i
  end

  def numbers(str)
    str.split(',').map(&:to_i)
  end
end
