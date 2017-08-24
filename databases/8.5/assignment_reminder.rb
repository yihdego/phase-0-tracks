require 'sqlite3'

@homework = SQLite3::Database.new("assignments.db")
@homework.results_as_hash = true

create_homework_log = <<-SQL
  CREATE TABLE IF NOT EXISTS assignments(
    id INTEGER PRIMARY KEY,
    assignment VARCHAR(255),
    due INT
  )
SQL

@homework.execute(create_homework_log)

def assignments_add
	puts "What homework is due"
	homework_add = gets.chomp
	puts "When is that assignment due"
	due_date = gets.chomp
	@homework.execute("INSERT INTO assignments (assignment, due) VALUES (?, ?)", [homework_add, due_date])
end

def assignments_due
	assignment_reminder = @homework.execute("SELECT * FROM assignments")
	assignment_reminder.each do |assignment|
		puts "The #{assignment['assignment']} is due on #{assignment['due']}."
	end
end

response = nil
until response == "done"
	puts "Do you want to know what homework is due or do you want to add a new asisngment? Respond with due and add respectively. Or done when you want to exit program."
	response = gets.chomp
	if response == "due"
		assignments_due
	elsif response == "add"
		assignments_add
	else
		puts "Ok goodbye"
	end
end
