# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.empty? ? 0 : arr.reduce(:+)
end

def max_2_sum arr
  length = arr.length
  if length == 0
    0
  elsif length == 1
    arr[0]
  else
    sorted = arr.sort
    sorted[length-1] + sorted[length-2]
  end
end

def sum_to_n? arr, n
  length = arr.length
  if length <= 1
    false
  else
    (0...length).each { |i| (i+1...length).each { |j|
      if arr[i] + arr[j] == n
      return true
    end
    }}
    false
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  if s =~ /^[01]+$/
    s.to_i(2).remainder(4).equal? 0
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError.new
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(new_isbn)
    if new_isbn.empty?
      raise ArgumentError.new
    else
      @isbn = new_isbn
    end
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError.new
    else
      @price = new_price
    end
  end
  
  def price_as_string
    price_to_s = "$" + @price.to_s
    if price_to_s =~ /\.\d\d$/
      price_to_s
    elsif price_to_s =~ /\.\d$/
      price_to_s + "0"
    else
      price_to_s + ".00"
    end
  end
      
end
