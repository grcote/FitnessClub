class FamilyController < ApplicationController

before_filter { 
  }

  def index
  #Viewing all Families; call edit/delete from this screen
    @families = Family.order("parent_last_name ASC, parent_first_name ASC")
    render :family_index
  end


  def create
  #Storing values for new Family information
    @new_family = Family.new     
    @new_family.parent_first_name        = params[:parent_first_name]
    @new_family.parent_last_name         = params[:parent_last_name]
    @new_family.chaperone_first_name     = params[:chaperone_first_name]
    @new_family.chaperone_last_name      = params[:chaperone_last_name]
    @new_family.home_phone               = params[:home_phone]
    @new_family.cell_phone               = params[:cell_phone]
    @new_family.work_phone               = params[:work_phone]
    @new_family.email                    = params[:email]
    @new_family.signature                = (params[:signature] == "on")  


  #Testing validations to see if new Family record will save
    if @new_family.save      
      
      #Creating Registrations for new Family if new Family successfully saves
        registrations                    = Registration.new
        registrations.registration_num   = 0
        registrations.tshirt_num         = 0
        registrations.pp_member_num      = 0
        registrations.pp_nonmember_num   = 0 
        registrations.pp_child_num       = 0
        registrations.conduct_code       = false 
        registrations.field_trip_form    = false 
        registrations.family_id          = @new_family.id
        registrations.save 

      flash[:success] = "New family added." 
      redirect_to("/family")
    else
      flash[:error] = "Missing required fields."     
      render :action => "family_new"
    end

  end


  def new
    @new_family = Family.new
    render :family_new
  end


  def edit
    @show_family = Family.where({ :id => params[:id] }).first
    render :family_edit
  end


  def show

  end


  def update

  #Editing any changes to Family information
    @show_family = Family.where({ :id => params[:id] }).first   
    @show_family.parent_first_name        = params[:parent_first_name]
    @show_family.parent_last_name         = params[:parent_last_name]
    @show_family.chaperone_first_name     = params[:chaperone_first_name]
    @show_family.chaperone_last_name      = params[:chaperone_last_name]
    @show_family.home_phone               = params[:home_phone]
    @show_family.cell_phone               = params[:cell_phone]
    @show_family.work_phone               = params[:work_phone]
    @show_family.email                    = params[:email]
    @show_family.signature                = (params[:signature] == "on")

  #Saving Registrations input by user
    @show_family.registration.registration_num   = params[:registration_num]
    @show_family.registration.tshirt_num         = params[:tshirt_num]
    @show_family.registration.pp_member_num      = params[:pp_member_num]
    @show_family.registration.pp_nonmember_num    = params[:pp_nonmember_num] 
    @show_family.registration.pp_child_num       = params[:pp_child_num]
    @show_family.registration.conduct_code       = (params[:conduct_code] == "on") 
    @show_family.registration.field_trip_form    = (params[:field_trip_form] == "on") 
    @show_family.registration.family_id          = params[:id]
    

    if @show_family.save
      @show_family.registration.save 
      flash[:success] = "Family successfully updated."      
      redirect_to family_edit_path
    else
      flash[:error] = "Missing required fields."      
      render :action => "family_edit"
    end

  end


  def destroy
  #Deleting Family record and associated Student and Registration records
    if delete_students = Student.where({ :family_id => params[:id] })
      for delete_student in delete_students
        delete_student.destroy
      end
    end

    if delete_registration = Registration.where({ :family_id => params[:id] }).first
      delete_registration.destroy
    end

    delete_family = Family.where({ :id => params[:id] }).first
    delete_family.destroy
    
    flash[:success] = "Family and related students successfully deleted."  
    redirect_to family_index_path
  end


end