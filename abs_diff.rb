#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/aaah

result = []
lines = gets(nil).split(" ").map(&:to_i)
result << lines
result[0].each_slice(2) {|n| puts n.inject(:-).abs}
