# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    raise_if_negative(str)
    digits = numbers(str)
    digits.reduce { |sum, digit| sum + digit }
  end

  def numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end

  def raise_if_negative(str)
    raise if str.include?('-')
  end
end
