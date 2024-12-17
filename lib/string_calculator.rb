# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    num = numbers(str)
    num.inject(:+)
  end

  def numbers(str)
    str.scan(/\d+/).map(&:to_i)
  end
end
