# Q: How would you implement integer division if your language did not offer it.

# Proposition
# 1. When divisor is 0, it is undefined. Throw error
# 2. Handle negative values
## 2.1 If either of the numbers are negative result is negative
## 2.2 If both the numbers are negative result is positive

def divide(a,b)
  raise Exception.new("Undefined. Divisor is 0") if b == 0
  sign = 1
  result = -1

  # Handle corner cases
  if a < 0
    a *= -1
    sign *= -1
  end

  if b < 0
    b *= -1
    sign *= -1
  end

  while a >= 0
    a -= b
    result += 1
  end
  result * sign
end

puts divide(40,2)
