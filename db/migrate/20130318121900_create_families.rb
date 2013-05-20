class CreateFamilies < ActiveRecord::Migration
    def up
        create_table "families" do |t|
            t.string "parent_first_name"
            t.string "parent_last_name"
            t.string "chaperone_first_name"
            t.string "chaperone_last_name"
            t.string "home_phone"
            t.string "cell_phone"
            t.string "work_phone"
            t.string "email"
            t.boolean "signature"
            t.timestamps
        end
    end

    def down
        drop_table "families"
    end

end