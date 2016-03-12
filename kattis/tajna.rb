#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/tajna

STDOUT.flush
chars = gets.split("").select{|n| n != "\n"}
num = chars.length
matrices = []
arr = []

(1..num).each do |n|
  if num % n == 0 && n != num
    row = n
    col = num/n
    matrices << [n, num/n] if row <= col
  end
end

matrix_final = matrices.last
chars.each_slice(matrix_final[0]) {|a| arr << a}

matrix_final[1].times do |i|
  arr.each {|n| print n[i]}
end
