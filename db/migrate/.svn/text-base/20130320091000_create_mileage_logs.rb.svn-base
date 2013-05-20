class CreateMileageLogs < ActiveRecord::Migration
    def up
        create_table "mileage_logs" do |t|
            t.integer "miles_monday"
            t.integer "miles_wednesday"
            t.integer "miles_rest_of_week"
            t.boolean "attendance_monday"
            t.boolean "attendance_wednesday"
            t.integer "student_id"
            t.integer "week_id"
            t.timestamps
        end
    end

    def down
        drop_table "mileage_logs"
    end

end