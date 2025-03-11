# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = numbers(str)
    digits.reduce { |sum, digit| sum + digit }
  end

  def numbers(str)
    str.gsub("\n", ',').split(',').map(&:to_i)
  end
end
