# Count of repeated elements in an array

def count(arr)
  hash = Hash.new(0)
  arr.each { |n| hash[n] += 1 }
  hash.each { |k,v| puts "#{k} => #{v} time(s)" }
end

count(100.times.map { rand(5..12) })
