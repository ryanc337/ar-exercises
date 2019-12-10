require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts Store.sum(:annual_revenue)
puts Store.average(:annual_revenue)
milli_club = Store.where("annual_revenue < :milli", { milli: 1000000 })
puts milli_club.count()
