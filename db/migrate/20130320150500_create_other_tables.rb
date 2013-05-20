class CreateOtherTables < ActiveRecord::Migration
    def up
        create_table "coaches" do |t|
            t.string "coach_first_name"
            t.string "coach_last_name"
            t.integer "teacher_id"
            t.timestamps
        end

        create_table "teachers" do |t|
            t.string "letter_code"
            t.string "grade"
            t.timestamps
        end

        create_table "prices" do |t|
            t.string "item"
            t.string "price"
            t.timestamps
        end

        create_table "weeks" do |t|
            t.string "week_number"
            t.string "week_dates"
            t.timestamps
        end
    end

    def down
        drop_table "coaches"
        drop_table "teachers"
        drop_table "prices"
        drop_table "weeks"
    end

end