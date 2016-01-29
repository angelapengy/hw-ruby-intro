# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    sum = 0
    arr.each {|a| sum+=a}
    return sum
end

def max_2_sum arr
  # YOUR CODE 
  largest = -1000000
  secondlargest =  -1000000
  
  if arr.length == 1 
    return arr[0]
  elsif arr.length == 0
    return 0
  end
    
  arr.each do |a|
    if a > largest
      secondlargest = largest
      largest = a
    elsif a > secondlargest
      secondlargest = a
    end
  end
  return largest + secondlargest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |i|
    arr2 = arr.clone
    arr2.delete(i)
    arr2.each do |j|
      if i + j == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  arr = ["B","b","C","c","D", "d", "F", "f", "G","g","H","h","J","j","K","k","L","l","M","m","N","n","P","p","Q","q","R","r","S","s","T","t","V","v","W","w","X","x","Y","y","Z","z"]
  if arr.include? s[0]
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  valid = ["0", "1"]
    chars = s.split("")
    chars.each do |x|
      if not valid.include? x
        return false
      end
    end
  
  if s.to_i(2) % 4 == 0 and s.length != 0 
    return true
  else 
    return false
  end

end

# Part 3

class BookInStock

# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return format("$%.2f", @price)
  end
  
end
