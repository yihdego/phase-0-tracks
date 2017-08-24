require 'sqlite3'

homework = SQLite3::Database.new("assignments.db")

create_homework_log = <<-SQL
  CREATE TABLE IF NOT EXISTS assignments(
    id INTEGER PRIMARY KEY,
    assignment VARCHAR(255),
    due INT
  )
SQL

homework.execute(create_homework_log)

response = nil
until response = "dont"
	puts "Do you want to know what homework is due or do you want to add a new asisngment? Respond with due and add respectively. Or done when you want to exit program."
	response = gets.chomp
	if response = "due"
		assignments_due
	elsif response = "add"
		assignments_add
	else
		puts "That wasn't clear"
	end
end

def assignments_add
	homework.execute("INSERT INTO assignments (assignment, due) VALUES (?, ?)", [assingment, due])
end

def assignments_due
	assignments.each_pair do |assignment, due|
		puts "The #{assignment} is due on #{due}."
	end
end