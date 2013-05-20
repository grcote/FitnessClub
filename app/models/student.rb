class Student < ActiveRecord::Base

    belongs_to :family
    belongs_to :coach
    belongs_to :teacher
    has_one :award
    has_many :mileage_logs

    validates_presence_of :student_first_name,
         :message => "Student's first name is required"
    validates_presence_of :student_last_name,
         :message => "Student's last name is required"
    validates_presence_of :family_id,
         :message => "Family/parent is required"
    validates_presence_of :teacher_id,
         :message => "Teacher code is required"
    validates_presence_of :coach_id,
         :message => "Student coach is required"

    attr_accessible(:student_first_name)
    attr_accessible(:student_last_name)
    attr_accessible(:family_id)
    attr_accessible(:teacher_id)
    attr_accessible(:coach_id)

    def total_mileage 
      #Self is a student
        total_miles = 0

        for mileage_log in self.mileage_logs
          total_miles +=  (mileage_log.miles_monday + 
                mileage_log.miles_wednesday + mileage_log.miles_rest_of_week)
        end

        return total_miles
    end














end