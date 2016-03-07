#!/usr/bin/ruby

# Unsolved for https://open.kattis.com/problems/virus
# Test case 5/12

result = []
extracted_set = []
lines = gets(nil).split(" ")
result << lines
first_chars = result[0][0].split("")
second_chars = result[0][1].split("")

second_chars.each_with_index do |sc, i|
  extracted_set << sc if sc != first_chars[i]
end

if extracted_set.length > 0
  i = extracted_set.index(second_chars.last)
  extracted_set = extracted_set[0..i-1]
end
puts extracted_set.count

#
# GTTTGACACACATT
# GTTTGACCACAT
