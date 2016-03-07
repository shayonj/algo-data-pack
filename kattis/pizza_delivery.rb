#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/pizza

result = []
STDOUT.flush
cases = gets.split(" ").map(&:to_i)[0]

def efficient_point(array, total)
  upside = final = current = 0
  downside = total

  array.each do |i|
    upside += i
    downside -= i
    current += upside - (total - upside)
    final = current < final ? current : final
  end

  final
end

cases.times do |i|
  cost_baseline = total = rows = cols = ri = 0

  STDIN.each_line do |line|
    line1 = line.split(" ").map(&:to_i)
    rows = line1[0]
    cols = line1[1]

    sum_of_vertical_area = Array.new(rows, 0)
    sum_of_horizontal_area = Array.new(cols, 0)

    cols.times do |ci|
      STDOUT.flush
      x = gets.split(" ").map(&:to_i)

      x.each_with_index do |line_entry, i|
        ci = i
        sum_of_horizontal_area[ri] += line_entry
        sum_of_vertical_area[ci] += line_entry
        cost_baseline += (ri + ci) * line_entry
      end

      ri += 1 if ri != rows
    end

    rows.times {|r| total += sum_of_horizontal_area[r]}

    cost_num = cost_baseline + efficient_point(sum_of_horizontal_area, total) + efficient_point(sum_of_vertical_area, total)
    result << "#{cost_num} blocks"
    break
  end

end
puts result
