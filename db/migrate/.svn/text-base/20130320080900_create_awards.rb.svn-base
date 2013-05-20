class CreateAwards < ActiveRecord::Migration
    def up
        create_table "awards" do |t|
            t.boolean "water_bottle"
            t.boolean "race_hat"
            t.boolean "green_star"
            t.boolean "red_star"
            t.boolean "blue_star"
            t.boolean "gold_star"
            t.boolean "shoe"
            t.boolean "rising_star"
            t.boolean "excellence"
            t.boolean "number_1"
            t.boolean "bolder_boulder"
            t.boolean "non_stop_2"
            t.boolean "non_stop_4"
            t.boolean "non_stop_6"
            t.integer "student_id"
            t.timestamps
        end
    end

    def down
        drop_table "awards"
    end

end