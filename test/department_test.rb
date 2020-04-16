require 'minitest/autorun'
require 'minitest/pride'
require './lib/department'
require './lib/employee'

class DepartmentTest < Minitest::Test
  def setup
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
  end

  def test_it_exists
    assert_instance_of Department, @customer_service
  end

  def test_it_has_attributes
    assert_equal "Customer Service", @customer_service.name
    assert_equal [], @customer_service.employees
  end

  def test_can_hire_employees
    @customer_service.hire(@bobbi)
    @customer_service.hire(@aaron)
    assert_equal [@bobbi, @aaron], @customer_service.employees
  end
end






# pry(main)> customer_service.expenses
# # => 0
#
# pry(main)> customer_service.expense(100)
#
# pry(main)> customer_service.expense(25)
#
# pry(main)> customer_service.expenses
# # => 125
