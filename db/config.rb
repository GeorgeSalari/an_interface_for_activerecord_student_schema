require 'active_record'
require 'faker'
require_relative '../app/models/student.rb'
require_relative '../app/models/teacher.rb'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/interface-students.sqlite3")
