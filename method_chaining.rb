# Refactor for elegance
def shout_backwards(string)
  # all_caps  = string.upcase
  # backwards = all_caps.reverse
  # result    = backwards + "!!!"
  result = string.upcase.reverse + "!!!"
  return result
end


# This is convoluted. Refactor for clarity.
def squared_primes(array)
  #Rewritten code:
  prime_array = []

  array.each do |array_num|
    if (2..array_num-1).select{|potential_divisor| array_num % potential_divisor == 0}.count == 0 && array_num > 1
      prime_array << array_num
    end
  end

  squared_primes_array = prime_array.map {|prime_num| prime_num**2}
  #Original Code:
  # array.find_all{|x| (2..x-1).select{|i| x % i == 0}.count == 0 && x > 1}.map{|p| p*p}
end
