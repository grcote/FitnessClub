class CreateStudents < ActiveRecord::Migration
    def up
        create_table "students" do |t|
            t.string "student_first_name"
            t.string "student_last_name"
            t.integer "family_id"
            t.integer "teacher_id"
            t.integer "coach_id"
            t.timestamps
        end
    end

    def down
        drop_table "students"
    end

end