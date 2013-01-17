class AppointmentsController < ApplicationController
  # GET /appointments
  # GET /appointments.json

  before_filter :authenticate_user!
  before_filter :set_profile!
  before_filter :get_profile!

  load_and_authorize_resource

  def index
    puts "%%%****&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%"
    puts current_user.profile.inspect
    puts "%%%****&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%"
    @appointments = current_user.profile.appointments
    puts "%%%****&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
    @appointment = current_user.profile.appointments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appointment }
    end
  end

  # GET /appointments/new
  # GET /appointments/new.json
  def new
    @appointment = current_user.profile.appointments.build
    @doctors = Doctor.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appointment }
    end
  end

  # GET /appointments/1/edit
  def edit
    @appointment = current_user.profile.appointments.find(params[:id])
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = current_user.profile.appointments.new(params[:appointment])

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render json: @appointment, status: :created, location: @appointment }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appointments/1
  # PUT /appointments/1.json
  def update
    @appointment = current_user.profile.appointments.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:appointment])
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment = current_user.profile.appointments.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url }
      format.json { head :no_content }
    end
  end


  private
  def set_profile!
    @profile = current_user.profile
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    if @profile.nil?
     current_user.update_attributes!(:profile => Profile.new(:type => "Customer", :name => current_user.username, :user_id => current_user.id ))
     redirect_to :controller => :appointments, :action => :index
    end
    puts current_user.profile.inspect
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  end

  def get_profile!
    puts "%%%*************************%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    @profile = current_user.profile
    puts current_user.profile.inspect
    puts "%%%*************************%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  end
end
