class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    student_names_test = BoatingTest.all.find do |boating_test|
      boating_test.student.first_name == student_name && boating_test.boating_test_name == test_name
    end
    student_names_test.status = 'pass'
  end

  def self.fail_student(student_name, test_name)
    student_names_test = BoatingTest.all.find do |boating_test|
      boating_test.student.first_name == student_name && boating_test.boating_test_name == test_name
    end
    student_names_test.status = 'fail'
  end

  def self.student_grade_percentage(student_first_name)
    #Find student object with student_first_name
    student_for_percentage = Student.find_student(student_first_name)

    #Find the boating test objects affiliated with that student
    all_tests = BoatingTest.all.find_all do |boating_test|
      boating_test.student == student_for_percentage
    end

    passed_tests = all_tests.find_all do |boating_test|
      boating_test.status == 'pass'
    end

    #return passed tests over total tests for that student
    percentage =  passed_tests.count.to_f  / all_tests.count.to_f
    percentage = "#{(percentage * 100).round(2)}%"
  end

end
