#	Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples(number, multiple_array)
  multiple_array = multiple_array.kind_of?(Integer) ? [multiple_array] : multiple_array

  sum = 0

  (1...number).each do |i|
    multiple_array.each do |multiple_number|
      if (i % multiple_number).zero?
        sum += i    
        break
      end
    end
  end
  sum
end

p multiples(10, [3, 5])
p multiples(1000, [3, 5])
p multiples(10, 3)
