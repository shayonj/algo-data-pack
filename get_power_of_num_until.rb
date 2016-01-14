def get_power_of_num_until(num, til)
  result = 1
  while ( (result *= num) <= til )
    puts result
  end
end

get_power_of_num_until(2, 1000)
get_power_of_num_until(3, 1000)
