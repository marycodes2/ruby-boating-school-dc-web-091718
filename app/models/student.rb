class Student

@@all = []

attr_reader :first_name

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def self.all
  @@all
end

def add_boating_test(boating_test_name, status, instructor)
  BoatingTest.new(self, boating_test_name, status, instructor)
end

def self.find_student(student_first_name)
  @@all.find do |student_instance|
    student_instance.first_name == student_first_name
  end
end

end
