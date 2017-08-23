require './db/config'
require 'faker'

class Student < ActiveRecord::Base
  def self.create_ten_students
    10.times do
      student = Student.new do |cell|
                  name = Faker::Name.unique.name
                  name.split
                  cell.first_name = name[0]
                  cell.last_name = name[1]
                  cell.email = Faker::Internet.email
                  cell.birthday = Faker::Date.birthday(17, 21)
                  cell.phone = Faker::PhoneNumber.phone_number
                  cell.teacher_id = rand(1..9)
                end

      student.save
    end
end
