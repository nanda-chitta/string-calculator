# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?
    raise if str.include?('-')

    digits = numbers(str)
    digits.reduce { |sum, digit| sum + digit }
  end

  def numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end
end
