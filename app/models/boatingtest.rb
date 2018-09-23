class BoatingTest

  @@all = []

  attr_accessor :student, :status, :boating_test_name

  def initialize(student, boating_test_name, status, instructor)
    @student, @boating_test_name, @status, @instructor = student, boating_test_name, status, instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
