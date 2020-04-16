require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
# Use TDD to create an Employee class that responds to the following interaction pattern:
class EmployeeTest < Minitest::Test
  def setup
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  def test_it_exists
    assert_instance_of Employee, @bobbi 
  end
end

#
# # => #<Employee:0x00007fdfd48af848...>
#
# pry(main)> bobbi.name
# # => "Bobbi Jaeger"
#
# pry(main)> bobbi.age
# # => 30
#
# pry(main)> bobbi.salary
# # => 100000
