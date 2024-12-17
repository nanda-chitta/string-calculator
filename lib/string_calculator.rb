# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    raise_if_negative(str)
    num = numbers(str)
    num.inject(:+)
  end

  def numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end

  def raise_if_negative(str)
    raise if str.include?('-')
  end
end
