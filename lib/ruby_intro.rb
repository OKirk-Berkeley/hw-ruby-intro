# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  tot = 0
  arr.each do |x|
    tot = tot + x
  end
  tot
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  big = -Float::INFINITY
  big_jr = -Float::INFINITY
  arr.each do |x|
    if x > big
      big_jr = big
      big = x
    elsif x > big_jr
      big_jr = x
    end
  end
  big + big_jr
end

def sum_to_n?(arr, n)
  if arr.length < 2
    return false
  elsif arr.length == 2
    return arr[0] + arr[1] == n
  end
  (1...arr.length).each do |i|
    if arr[0] + arr[i] == n
      return true
    end
  end
  sum_to_n?(arr[1...arr.length], n)
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  nonletters = /[^a-zA-Z]/
  vowels = /[aeiouAEIOU]/
  if s.length == 0
    return false
  end
  if (nonletters =~ s) == 0
    return false
  end
  if (vowels =~ s) == 0
    return false
  end
  true
end

def binary_multiple_of_4?(s)
  invalid = /[^01]/
  if invalid.match(s)
    return false
  end
  if s.length < 2 && s == '0'
    return true
  end
  if s[s.length-2...s.length] == '00'
    return true
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == ''
      raise ArgumentError, "isbn can't be empty"
    end
    if price <= 0.0
      raise ArgumentError, "price can't be less than or equal to 0"
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    sprintf('$%.2f', @price)
  end
end