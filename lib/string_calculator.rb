# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    digits = numbers(str)
    raise_if_negative(digits)
    ignore_four_digit_numbers(digits)
    digits.reduce { |sum, digit| sum + digit }
  end

  def numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end

  def raise_if_negative(num)
    raise "Negative numbers not allowed: #{negative?(num).join(', ')}" if negative?(num).any?
  end

  def negative?(num)
    num.select(&:negative?)
  end

  def ignore_four_digit_numbers(num)
    num.reject! { |n| n > 999 }
  end
end
