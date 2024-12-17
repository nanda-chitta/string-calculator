# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?
    numbers = str.split(',')
    return numbers[0].to_i + numbers[1].to_i if str.include?(',')

    str.to_i
  end
end
