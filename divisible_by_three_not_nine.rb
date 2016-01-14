# Q:  Describe a routine which returns the set of integers in {1..100} divisible without remainder by 3 but not by 9
# Simple terms: From a range return number(s) which are divisble by 3 but not 9

def divisible_by_three_not_nine(arr)
  arr.select { |n| n % 3 == 0 && n % 9 != 0 }
end

print divisible_by_three_not_nine(a)
