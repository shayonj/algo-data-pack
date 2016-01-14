# Return even numbers in a list and are not divisble by 3

def even_numbers(arr)
  arr.select { |n| n % 2 == 0 && n %3 != 0 }
end

a = *(1..100)
puts even_numbers(a)
