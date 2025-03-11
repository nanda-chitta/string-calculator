# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?
    digits = str.split(',')
    return digits[0].to_i + digits[1].to_i if str.include?(',')
    str.to_i
  end
end
