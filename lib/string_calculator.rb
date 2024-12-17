# frozen_string_literal: true

module StringCalculator
  def add(str)
    return 0 if str.empty?

    num = numbers(str)
    raise_if_negative(num)
    ignore_numbers(num)
    num.inject(:+)
  end

  def ignore_numbers(num)
    num.reject! { |n| n > 1000 }
  end

  def raise_if_negative(num)
    raise "Negative numbers not allowed: #{negative_nums(num).join(', ')}" if negative_nums(num).any?
  end

  def negative_nums(num)
    num.select(&:negative?)
  end

  def numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end
end
