# Q: How would you check if a number is power of 2?
#
# Check if the number divides by 2 until the result is even and greater than one
#

def is_power_of_two(x)
 while ((x % 2) == 0) && (x > 1) do
   x /= 2;
 end
 # puts x == 1
 x == 1
end

is_power_of_two(8) #=> true
is_power_of_two(10) #=> false
