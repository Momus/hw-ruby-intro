# frozen_string_literal: true

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.reduce(:+) || 0
end

def max_2_sum(arr)
  arr.max(2).reduce(:+) || 0
end

def sum_to_n?(arr, enn)
  test = false
  arr.each_with_index do |m, i|
    arr.delete_at i
    arr.each do |o|
      test = true if m + o == enn
    end
  end
  test
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(ess)
  if ess[0].respond_to?(:downcase)
    ess[0].downcase =~ /[bcdfghjklmnpqrstvwxyz]/
  else
    false
  end
end

def binary_multiple_of_4?(str)
  (Integer(str, 2) % 0b100).zero?
rescue ArgumentError
  false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
