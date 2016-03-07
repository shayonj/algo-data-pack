#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/aaah

STDOUT.flush
line1 = gets
STDOUT.flush
line2 = gets

puts line2.count("a") > line1.count("a") ?  "no" : "go"
