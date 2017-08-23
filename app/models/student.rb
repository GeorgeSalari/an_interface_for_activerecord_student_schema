require './db/config'

class Student < ActiveRecord::Base
  def self.create_ten_students
    10.times do
      student = Student.new do |cell|
                  name = Faker::Name.unique.name
                  name.split
                  cell.first_name = name[0]
                  cell.last_name = name[1]
                  cell.gender = ['male','femele'].sample
                  cell.birthday = Faker::Date.birthday(17, 21)
                  cell.email = Faker::Internet.email
                  cell.phone = Faker::PhoneNumber.phone_number
                end

      student.save
    end
  end
end
