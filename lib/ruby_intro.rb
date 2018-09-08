# frozen_string_literal: true

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.reduce(:+) || 0
end

def max_2_sum(arr)
  arr.max(2).reduce(:+) || 0
end

def sum_to_n?(arr, int)
  test = false
  arr.each_with_index do |m, i|
    arr.delete_at i
    arr.each do |o|
      test = true if m + o == int
    end
  end
  test
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(word)
  word[0].downcase =~ /[bcdfghjklmnpqrstvwxyz]/ unless word.empty?
end

def binary_multiple_of_4?(str)
  (Integer(str, 2) % 0b100).zero?
rescue ArgumentError
  false
end

# Part 3
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = validate_isbn isbn
    @price = validate_price price
  end

  def price_as_string
    "$%0.2f" % @price
  end

  private

  def validate_isbn(isbn)
    ## A real ISBN-10 is a ten digit number, each digit having a value
    ## of 0,1,2,3,4,5,6,7,8,9,X (X for 10, so it's a base 11 system)
    ## an the sum of the digits, each multiplied by a weight
    ## descending from 10 to 1, is a multiple of 11.  Unfortunetly,
    ## the specs don't use real ISBNS, so this is not possible to
    ## impliment.
    raise ArgumentError if isbn.nil? || isbn.empty?
    isbn
  end

  def validate_price(price)
    raise ArgumentError unless price > 0
    price
  end
end
