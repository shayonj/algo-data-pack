#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/reversebinary

STDIN.each_line do |line|
  nums = line.scan(/\d+/).map(&:to_i)
  puts nums[0].to_s(2).reverse.to_i(2)
end
