#!/usr/bin/ruby

# Solution for https://open.kattis.com/problems/virus

result = []
lines = gets(nil).split(" ")
result = lines

current_time_set = result[0].split(":").map(&:to_i)
explosion_time_set = result[1].split(":").map(&:to_i)

sec = explosion_time_set[2] - current_time_set[2]
min = explosion_time_set[1] - current_time_set[1]
hour = explosion_time_set[0] - current_time_set[0]

if sec < 0
  sec += 60
  min -= 1
end

if min < 0
  min += 60
  hour -= 1
end

hour += 24 if hour+min+sec == 0 || hour < 0

hour = "0#{hour}" if hour < 10
min = "0#{min}" if min < 10
sec = "0#{sec}" if sec < 10

puts "#{hour}:#{min}:#{sec}"
