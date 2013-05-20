class StudentController < ApplicationController

before_filter {
  }

  def index
  #Viewing all Students; call edit/delete from this screen  
    @students = Student.order("student_last_name ASC, student_first_name ASC")
    render :student_index

  end

  def create
  #Storing values for new Student information
    @new_student = Student.new
    @new_student.student_first_name        = params[:student_first_name]
    @new_student.student_last_name         = params[:student_last_name]
    @new_student.family_id                 = params[:family_id]
    @new_student.teacher_id                = params[:teacher_id]
    @new_student.coach_id                  = params[:coach_id]

  #Testing validations to see if new Student record will save
    if @new_student.save

    #Creating MileageLog records for new Student by weeks in program if new Student successfully save
      max_weeks = Week.last
      max_weeks = max_weeks[:week_number].to_i

      for week in 1..max_weeks
        mileage_logs                         = MileageLog.new
        mileage_logs.week_id                 = week
        mileage_logs.miles_monday            = 0
        mileage_logs.miles_wednesday         = 0
        mileage_logs.miles_rest_of_week      = 0
        mileage_logs.attendance_monday       = false
        mileage_logs.attendance_wednesday    = false
        mileage_logs.student_id              = @new_student.id
        mileage_logs.save
      end

    #Creating Award records for new Student if new Student successfully save
      awards                            = Award.new
      awards.water_bottle               = false
      awards.race_hat                   = false
      awards.green_star                 = false
      awards.red_star                   = false
      awards.blue_star                  = false
      awards.gold_star                  = false
      awards.shoe                       = false
      awards.rising_star                = false
      awards.excellence                 = false
      awards.number_1                   = false
      awards.bolder_boulder             = false
      awards.non_stop_2                 = false
      awards.non_stop_4                 = false
      awards.non_stop_6                 = false
      awards.student_id                 = @new_student.id     
      awards.save

      flash[:success] = "Student successfully added."      
      redirect_to student_index_path
    
    else
      flash[:error] = "Missing required fields."      
      @families = Family.order("parent_last_name ASC, parent_first_name ASC")
      @teachers = Teacher.order("grade ASC, letter_code ASC")
      @coaches = Coach.order("coach_last_name ASC, coach_first_name ASC")
      render :action => "student_new"
    end

  end

  def new
  #Loading variables to populate drop-downs and default values for creating new Student
    @families = Family.order("parent_last_name ASC, parent_first_name ASC")
    @teachers = Teacher.order("grade ASC, letter_code ASC")
    @coaches = Coach.order("coach_last_name ASC, coach_first_name ASC")
    @new_student = Student.new
    render :student_new
  end

  def edit
  #Loading variables to populate drop-downs and stored values for editing existing Student
    @show_student = Student.where({ :id => params[:id] }).first
    @families = Family.order("parent_last_name ASC, parent_first_name ASC")
    @teachers = Teacher.order("grade ASC, letter_code ASC")
    @coaches = Coach.order("coach_last_name ASC, coach_first_name ASC")
    @mileage_logs = MileageLog.where({ :student_id => params[:id] }).order("week_id ASC") 
    render :student_edit
  end

  def show

  end

  def update  
  #Editing any changes to Student information
    @show_student = Student.where({ :id => params[:id] }).first   
    @show_student.student_first_name       = params[:student_first_name]
    @show_student.student_last_name        = params[:student_last_name]
    @show_student.family_id                = params[:family_id]
    @show_student.teacher_id               = params[:teacher_id]
    @show_student.coach_id                 = params[:coach_id]

  #Editing any changes to a Student's Mileage Log  
    max_weeks = Week.last
    max_weeks = max_weeks[:week_number].to_i

    update_miles = MileageLog.where({ :student_id => params[:id] }).order("week_id ASC")

    week = 0
    
    for update_mile in update_miles

      week += 1

      params_miles_monday             = "miles_monday_" + week.to_s
      params_miles_wednesday          = "miles_wednesday_" + week.to_s
      params_miles_rest_of_week       = "miles_rest_of_week_" + week.to_s
      params_attendance_monday        = "attendance_monday_" + week.to_s
      params_attendance_wednesday     = "attendance_wednesday_" + week.to_s 

      update_mile.miles_monday            = params["#{params_miles_monday}"]
      update_mile.miles_wednesday         = params["#{params_miles_wednesday}"]
      update_mile.miles_rest_of_week      = params["#{params_miles_rest_of_week}"]
      update_mile.attendance_monday       = (params["#{params_attendance_monday}"] == "on")
      update_mile.attendance_wednesday    = (params["#{params_attendance_wednesday}"] == "on")
      update_mile.save
    end
 
  #Saving Award values input by user
    @show_student.award.water_bottle       = (params[:water_bottle] == "on")
    @show_student.award.race_hat           = (params[:race_hat] == "on")
    @show_student.award.green_star         = (params[:green_star] == "on")
    @show_student.award.red_star           = (params[:red_star] == "on")
    @show_student.award.blue_star          = (params[:blue_star] == "on")
    @show_student.award.gold_star          = (params[:gold_star] == "on")
    @show_student.award.shoe               = (params[:shoe] == "on")
    @show_student.award.rising_star        = (params[:rising_star] == "on")
    @show_student.award.excellence         = (params[:excellence] == "on")
    @show_student.award.number_1           = (params[:number_1] == "on")
    @show_student.award.bolder_boulder     = (params[:bolder_boulder] == "on")
    @show_student.award.non_stop_2         = (params[:non_stop_2] == "on")
    @show_student.award.non_stop_4         = (params[:non_stop_4] == "on")
    @show_student.award.non_stop_6         = (params[:non_stop_6] == "on")
    @show_student.award.student_id         = (params[:id])

  #Testing to see if editing/saving Student record violates any validations  
    if @show_student.save
      @show_student.award.save
      flash[:success] = "Student successfully updated."      
      redirect_to student_edit_path
    else
      flash[:error] = "Missing required fields."
      @families = Family.order("parent_last_name ASC, parent_first_name ASC")
      @teachers = Teacher.order("grade ASC, letter_code ASC")
      @coaches = Coach.order("coach_last_name ASC, coach_first_name ASC")
      @mileage_logs = MileageLog.where({ :student_id => params[:id] }).order("week_id ASC")
      render :action => "student_edit"
    end
  end


  def destroy   
  #Deleting Student record and associated MileageLog and Award records
    if delete_mileage_logs = MileageLog.where({ :student_id => params[:id] })
      for delete_mileage_log in delete_mileage_logs
        delete_mileage_log.destroy
      end
    end

    if delete_award = Award.where({ :student_id => params[:id] }).first
      delete_award.destroy
    end

    delete_student = Student.where({ :id => params[:id] }).first
    delete_student.destroy
    
    flash[:success] = "Student and associated mileage log successfully deleted."  
    redirect_to student_index_path
  end

end

