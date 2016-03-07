#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/different

result = []
lines = gets(nil).split(" ").map(&:to_i)
result = lines
result.each_slice(2) do |n|
  m = n.inject(:-)
  puts m < 0 ? m  *= -1 : m
end
