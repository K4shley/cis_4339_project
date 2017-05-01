class ReportsController < ApplicationController
  def index
  end

  def appointments_by_date
    if session[:appointments]
      begin
        @appointments = Appointment.find(session[:appointments])
      rescue Exception => e
        #session contained invalid elements
      end
      session[:appointments] = nil
    end
  end

  def appointments_by_employee
    if session[:appointments]
      begin
        @appointments = Appointment.find(session[:appointments])
      rescue Exception => e
        # session contained invalid elements
      end
    end
    session[:appointments] = nil
  end

  def employee_pay_by_date
    if session[:appointments]
      begin
        @appointments = Appointment.find(session[:appointments])
      rescue Exception => e
        #session contained invalid elements
      end
      session[:appointments] = nil
    end
  end









def create()
  start_date = params[:dates][:start_date]
  end_date = params[:dates][:end_date]
  session[:appointments] = Appointment.in_date_range(start_date,end_date).map(&:id)
  redirect_to reports_appointments_by_date_path


end


def create1()
  employee_id = params[:employees][:employee_id]
  session[:appointments] = Appointment.find_by_employee_id(employee_id).map(&:id)
  redirect_to reports_appointments_by_employee_path


end

def create2()
  employee_id = params[:employees][:employee_id]
  start_date = params[:dates][:start_date]
  end_date = params[:dates][:end_date]
  session[:appointments] = Appointment.find_by_employee_id(employee_id).map(&:id) & Appointment.in_date_range(start_date,end_date).map(&:id)
  redirect_to reports_employee_pay_by_date_path
end


end
