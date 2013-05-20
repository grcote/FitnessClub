class CreateAwardRules < ActiveRecord::Migration
    def up
        create_table "award_rules" do |t|
            t.string "award"
            t.integer "rule"
            t.string "description"
            t.timestamps
        end
    end

    def down
        drop_table "award_rules"
    end

end