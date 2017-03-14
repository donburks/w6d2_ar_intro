class Student
  attr_accessor :id, :first_name, :last_name, :age

  def initialize(id, first_name, last_name, age)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def self.find(id) 
    data = db.query("SELECT * FROM students WHERE id=?", id)
    data.each do |student|
      return Student.new(student.id, student.first_name, student.last_name, student.age)
    end
  end
end

# SELECT * FROM students WHERE id=6;
# 6 | Bob | Smith | 9
# @student = Student.new(6, "Bob", "Smith", 9)
# puts @student.first_name // Bob

# SELECT * FROM students;
# Student.all
# Student.find(6);
