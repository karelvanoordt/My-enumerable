# frozen_string_literal: true

## Declare myEnumerable class
module MyEnumerable
  def all?
    each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?
    each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    array = []
    each do |item|
      array.push(item) if yield(item)
    end

    array
  end
end
