class ShiftsController < ApplicationController
  #before_action :set_shift, only: [:show, :edit, :update, :destroy]

  # GET /shifts
  # GET /shifts.json
  #def index
   # @shifts = Shift.all
 # end

  # GET /shifts/1
  # GET /shifts/1.json
  #def show
 # end

  # GET /shifts/new
#  def new
 #   @shift = Shift.new
 # end

  # GET /shifts/1/edit
  #def edit
  #end

  # POST /shifts
  # POST /shifts.json
 # def create
  #  @appointment = Appointment.new(shift_params)

#    respond_to do |format|
 #     if @appointment.save
  #      format.html { redirect_to @shift, notice: 'Shift was successfully created.' }
   #     format.json { render :show, status: :created, location: @shift }
    #  else
     #   format.html { render :new }
      #  format.json { render json: @shift.errors, status: :unprocessable_entity }
     # end
   # end
 # end

  # PATCH/PUT /shifts/1
  # PATCH/PUT /shifts/1.json
 # def update
  #  respond_to do |format|
   #   if @shift.update(shift_params)
    #    format.html { redirect_to @shift, notice: 'Shift was successfully updated.' }
     #   format.json { render :show, status: :ok, location: @shift }
    #  else
     #   format.html { render :edit }
     #   format.json { render json: @shift.errors, status: :unprocessable_entity }
     # end
   # end
  #end

  # DELETE /shifts/1
  # DELETE /shifts/1.json
#  def destroy
 #   @shift.destroy
  #  respond_to do |format|
   #   format.html { redirect_to shifts_url, notice: 'Shift was successfully destroyed.' }
    #  format.json { head :no_content }
   # end
 # end

 # private
    # Use callbacks to share common setup or constraints between actions.
  #  def set_shift
   #   @shift = Shift.find(params[:id])
  #  end

    # Never trust parameters from the scary internet, only allow the white list through.
  #  def shift_params
  #    params.require(:shift).permit(:start_time, :end_time)
  #  end
#end

  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @activity = Activity.new
    @employee = Employee.new
    @timeslot = Timeslot.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def appointment_params
    params.require(:appointment).permit(:customer_name, :timeslot_id, :date, :employee_id, :activity_id, :price, :duration)
  end

end
