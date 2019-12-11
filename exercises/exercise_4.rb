require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

        puts "this is how many stores there are: #{Store.count}"

        @mens_stores = Store.where(mens_apparel: true)
        @mens_stores.each do |n|
          puts n.name, n.annual_revenue
        end

        @womens_stores = Store.where("annual_revenue < :milli AND womens_apparel = :bool", { milli: 1000000, bool: :true })
        @womens_stores.each do |n|
          puts n.name, n.annual_revenue
        end