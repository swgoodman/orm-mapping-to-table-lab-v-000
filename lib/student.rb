class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table

    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    album TEXT
    );
    SQL

    DB[:conn].execute(sql)
  end

  def self.drop_table

    sql = <<-SQL
    DROP TABLE students
    SQL

    DB[:conn].execute(sql)
  end

  def save
    
    sql = <<-SQL
    DROP TABLE students
    SQL

    DB[:conn].execute(sql)

  end

end
