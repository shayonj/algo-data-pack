#!/usr/bin/ruby
# Solution to https://open.kattis.com/problems/bottledup

STDOUT.flush
line = gets.split(" ").map(&:to_i)
limit = line[0]
v1 = line[1]
v2 = line[2]

v1_count = 0
v2_count = 0

while limit >= v2 do
  break if limit % v1 == 0
  limit -= v2
  v2_count += 1
end

while limit >= v1 do
  limit -= v1
  v1_count += 1
end

puts limit != 0 ? "Impossible" : "#{v1_count} #{v2_count}"
