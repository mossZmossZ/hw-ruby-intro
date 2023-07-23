# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0

  # Iterate through each element in the array and add it to the sum
  arr.each do |element|
    sum += element
  end

  # Return the calculated sum
  sum
end

def max_2_sum arr
  # If the array is empty, return zero
  return 0 if arr.empty?

  # If the array has only one element, return that element
  return arr[0] if arr.length == 1

  # Sort the array in descending order to get the two largest elements at the beginning
  sorted_arr = arr.sort.reverse

  # Calculate the sum of the two largest elements
  sum_of_two_largest = sorted_arr[0] + sorted_arr[1]

  # Return the sum
  sum_of_two_largest
end

def sum_to_n? arr, n
  # Create an empty hash to store elements and their complements
  complements = {}

  # Iterate through each element in the array
  arr.each do |element|
    # Calculate the complement required to sum up to n
    complement = n - element

    # If the complement is present in the complements hash, it means we found two elements that sum to n
    return true if complements[complement]

    # Store the current element as a key in the complements hash
    complements[element] = true
  end

  # If we reach this point, no two elements sum up to n
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  # Check if the string is empty or does not start with an alphabet character
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)

  # Check if the first character is a consonant (not A, E, I, O, U, and case-insensitive)
  s[0].match?(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
  # Check if the string is empty or contains non-binary characters
  return false unless s.match?(/^[01]+$/)

  # Convert the binary string to an integer and check if it's a multiple of 4
  number = s.to_i(2)
  number % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
