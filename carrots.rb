#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/carrots

result = []
lines = gets(nil).split(" ").map(&:to_i)
result << lines
print result[0][1]
