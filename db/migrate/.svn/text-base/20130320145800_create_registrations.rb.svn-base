class CreateRegistrations < ActiveRecord::Migration
    def up
        create_table "registrations" do |t|
            t.integer "registration_num"
            t.integer "tshirt_num"
            t.integer "pp_member_num"
            t.integer "pp_nonmember_num"
            t.integer "pp_child_num"
            t.boolean "conduct_code"
            t.boolean "field_trip_form"
            t.integer "family_id"
            t.timestamps
        end
    end

    def down
        drop_table "registrations"
    end

end