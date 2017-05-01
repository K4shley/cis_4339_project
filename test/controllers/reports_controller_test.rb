require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get appointments_by_date" do
    get reports_appointments_by_date_url
    assert_response :success
  end

  test "should get appointments_by_employee" do
    get reports_appointments_by_employee_url
    assert_response :success
  end

  test "should get employee_pay_by_date" do
    get reports_employee_pay_by_date_url
    assert_response :success
  end

end
