# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |x|
    result += x
  end
  result
end

def max_2_sum arr
  result = 0 
  if arr.length == 0 
    return result
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    result = arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    return false
  end
  arr.each_with_index do |x,index1|
    arr.each_with_index do |y,index2|
    next if index1 == index2
      result = x + y
      if result == n 
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
   # Regular expression to match the first character of the string
   consonant_regex = /^[b-df-hj-np-tv-z]/i

   # Check if the first character matches the consonant regex
   !!(s =~ consonant_regex)
end

def binary_multiple_of_4? s
  # Check if the string is a valid binary number
  return false unless s.match?(/\A[01]+\z/)

  # Convert the binary number to an integer and check if it's a multiple of 4
  num = s.to_i(2)
  num % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    validate_isbn(isbn)
    validate_price(price)

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

  private

  def validate_isbn(isbn)
    raise ArgumentError, "ISBN cannot be an empty string" if isbn.empty?
  end

  def validate_price(price)
    raise ArgumentError, "Price should be greater than zero" if price <= 0
  end
end

