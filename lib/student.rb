class Student
  attr_accessor :name, :grade

  def initialize(name, grade, id: null)
    @name = name
    @grade = grade
  end

  def self.create_table

    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade TEXT
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
    INSERT INTO students (id, name,grade) VALUES (@name, @grade)
    SQL

    DB[:conn].execute(sql)

  end

end
