require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mary = Student.new("Mary")
sean = Student.new("Sean")
melanie = Instructor.new("Melanie")
jake = Instructor.new("Jake")
mary_swim_test = mary.add_boating_test("swimming", "pending", melanie)
sean_test = sean.add_boating_test("swimming", "pending", jake)
find_student = Student.find_student("Mary")
Instructor.fail_student("Mary", "swimming")
Instructor.pass_student("Sean", "swimming")
mary_sailing_test = mary.add_boating_test("sailing", "pending", jake)
mary_biking_test = mary.add_boating_test("biking", "pending", melanie)
Instructor.pass_student("Mary", "sailing")
Instructor.fail_student("Mary", "biking")


puts "\nTEST ONE"
puts mary.first_name == "Mary"

puts "\nTEST TWO"
puts Student.all == [mary, sean]

puts "\nTEST THREE"
puts BoatingTest.all.include?(mary_swim_test) == true

puts "\nTEST FOUR"
puts find_student == mary

puts "\nTEST FIVE"
puts BoatingTest.all.include?(sean_test) == true

puts "\nTEST SIX"
puts BoatingTest.all == [mary_swim_test, sean_test, mary_sailing_test, mary_biking_test]

puts "\nTEST SEVEN and EIGHT"
puts Instructor.all == [melanie, jake]

puts "\nTEST NINE"
puts sean_test.status == 'pass'


puts "\nTEST TEN"
puts mary_swim_test.status == 'fail'

puts "\nTEST ELEVEN"
puts Instructor.student_grade_percentage('Mary') == '33.33%'


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



0 #leave this here to ensure binding.pry isn't the last line
