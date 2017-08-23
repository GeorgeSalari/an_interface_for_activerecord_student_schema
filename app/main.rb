require './db/config'

def check_email(email)
  flag = false
  Teacher.all.each do |teacher|
    if teacher.email == email
      flag = true
    end
  end
  flag
end

def print_menue
  puts "Welcome! PLease pick an option"
  puts "1. List all users"
  puts "2. Create a new user"
  puts "3. Find a student by id"
  puts "4. Work with database"
  puts "5. Exit"
end


puts "Hello, write please your email, to log in app"
print ">> "
email = gets.chomp
if check_email(email)
  print_menue
else
  puts "We don't have your email in database, please ask Josh Teng"
end
