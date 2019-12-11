require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true
  validates :store, presence: true
  validates :hourly_rate, :money

  def money 
    if hourly_rate.present? && hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "Cannot be below 45 or over 200")
    end
  end

end

