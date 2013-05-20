class ReportController < ApplicationController

 before_filter {
  }
     
     def total_mileage
        @students = Student.all.sort_by { |student| student.total_mileage * - 1 }
        render :report_total_mileage
     end

    def student_awards
        @students = Student.order("student_last_name ASC, student_first_name ASC")
        render :report_student_awards
    end

    def family_registrations
        @families = Family.order("parent_last_name ASC, parent_first_name ASC")
        render :report_family_registrations
    end

end