# Print fibonacci series for n number of occurences

def fib(n)
  first, next_num = 0
  second = 1
  n.times do |i|
    if i < 1
      next_num = i
    else
      next_num = first + second
      first = second
      second = next_num
    end

    puts next_num
  end
end

fib(100)
