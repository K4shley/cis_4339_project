require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do

    @appointment = Appointment.new
  end

  test "customer name cannot be blank" do
    #@appointment.customer_name = nil
  assert (@appointment.invalid? "Customer name must not be blank")

  end


end
