require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, appointment: { customer_id: @appointment.customer_id, doctor_id: @appointment.doctor_id, pet_id: @appointment.pet_id, reminder: @appointment.reminder, visitDate: @appointment.visitDate, visitReason: @appointment.visitReason }
    end

    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should show appointment" do
    get :show, id: @appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    put :update, id: @appointment, appointment: { customer_id: @appointment.customer_id, doctor_id: @appointment.doctor_id, pet_id: @appointment.pet_id, reminder: @appointment.reminder, visitDate: @appointment.visitDate, visitReason: @appointment.visitReason }
    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete :destroy, id: @appointment
    end

    assert_redirected_to appointments_path
  end
end
