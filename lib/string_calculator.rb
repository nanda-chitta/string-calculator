# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?
    return str[0].to_i + str[2].to_i if str.include?(',')
    str.to_i
  end
end
