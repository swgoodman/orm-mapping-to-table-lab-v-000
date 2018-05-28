class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-sql
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    album TEXT
    )
    sql
    DB[:conn].execute(sql)

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
