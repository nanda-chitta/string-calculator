# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?
    num = numbers(str)
    return num[0] + num[1] if str.include?(',')

    str.to_i
  end

  def numbers(str)
    str.scan(/\d+/).map(&:to_i)
  end
end
