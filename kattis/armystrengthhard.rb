#!/usr/bin/ruby

# Solution to https://open.kattis.com/problems/armystrengthhard/

STDOUT.flush
cases = gets.split(" ").map(&:to_i)[0]

cases.times do |c|
  STDOUT.flush
  test_case_empty = gets

  STDOUT.flush
  monsters = gets.split(" ").map(&:to_i)
  g_monsters = monsters[0]
  m_monsters = monsters[1]

  STDOUT.flush
  strengths = gets.split(" ").map(&:to_i)
  g_strengths = strengths

  STDOUT.flush
  strengths = gets.split(" ").map(&:to_i)
  m_strengths = strengths

  g_power_count = g_strengths.max
  m_power_count = m_strengths.max

  puts g_power_count > m_power_count || g_power_count == m_power_count ? "Godzilla" : "MechaGodzilla"
end
