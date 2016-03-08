#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/anothercandies

STDOUT.flush
cases = gets.to_i

cases.times do |c|
  STDOUT.flush
  test_case_empty = gets
  candies = 0

  STDOUT.flush
  children = gets.to_i

  children.times do |n|
    STDOUT.flush
    candies += gets.to_i
  end

  puts (candies % children) == 0 ? "YES" : "NO"
end
