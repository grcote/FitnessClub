# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Family.create({
    :parent_first_name       => "Marcey",
    :parent_last_name        => "Cote",
    :chaperone_first_name    => "Sam",
    :chaperone_last_name     => "Johnson",
    :home_phone              => "3035456464", 
    :cell_phone              => "3039561436",
    :work_phone              => "3036411821", 
    :email                   => "gmjcote@msn.com", 
    :signature               => 1,
})

Family.create({
    :parent_first_name       => "Pat",
    :parent_last_name        => "Felt",
    :chaperone_first_name    => "Marina",
    :chaperone_last_name     => "Felt",
    :home_phone              => "3034990818", 
    :cell_phone              => "3034998337",
    :work_phone              => "3035551212", 
    :email                   => "pat@felt.com", 
    :signature               => 0,
})

Student.create({
    :student_first_name     => "Marcus",
    :student_last_name      => "Cote",
    :teacher_id             => 1,
    :family_id              => 1,
    :coach_id               => 1,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 1,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 2,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 3,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 4,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 5,
})

MileageLog.create({
    :miles_monday           => 1,
    :miles_wednesday        => 2,
    :miles_rest_of_week     => 3,
    :attendance_monday      => true,
    :attendance_wednesday   => false,
    :student_id             => 1,
    :week_id                => 6,
})

Coach.create({
    :coach_first_name       => "Eddie",
    :coach_last_name        => "Connolly",
    :teacher_id             => 1,
})

Coach.create({
    :coach_first_name       => "Sam",
    :coach_last_name        => "Nielsen",
    :teacher_id             => 2,
})

Teacher.create({
    :letter_code            => "BR",
    :grade                  => "5",
})

Teacher.create({
    :letter_code            => "TH",
    :grade                  => "4",
})

Week.create({
    :week_number            => "1",
    :week_dates             => "Apr 8-14",
})

Week.create({
    :week_number            => "2",
    :week_dates             => "Apr 15-21",
})

Week.create({
    :week_number            => "3",
    :week_dates             => "Apr 22-28",
})

Week.create({
    :week_number            => "4",
    :week_dates             => "Apr 29-May 5",
})

Week.create({
    :week_number            => "5",
    :week_dates             => "May 6-12",
})

Week.create({
    :week_number            => "6",
    :week_dates             => "May 13-17",
})

Price.create({
    :item                   => "T-Shirt",
    :price                  => "7.99",
})

Price.create({
    :item                   => "Pasta Pig-Out",
    :price                  => "11.49",
})

Registration.create({
    :registration_num       => 2,
    :tshirt_num             => 3,
    :pp_member_num          => 2,
    :pp_nonmember_num        => 1,
    :pp_child_num           => 0,
    :conduct_code           => 1,
    :field_trip_form        => 0,
    :family_id              => 1,
})

Registration.create({
    :registration_num       => 3,
    :tshirt_num             => 4,
    :pp_member_num          => 0,
    :pp_nonmember_num        => 2,
    :pp_child_num           => 1,
    :conduct_code           => 0,
    :field_trip_form        => 1,
    :family_id              => 2,
})

Award.create({
    :water_bottle           => 1,
    :race_hat               => 0,
    :green_star             => 1,
    :red_star               => 0,
    :blue_star              => 1,
    :gold_star              => 0,
    :shoe                   => 1,
    :rising_star            => 0,
    :excellence             => 1,
    :number_1               => 0,
    :bolder_boulder         => 1,
    :non_stop_2             => false,
    :non_stop_4             => true,
    :non_stop_6             => false,
    :student_id             => 1,
})

Award.create({
    :water_bottle           => 1,
    :race_hat               => 1,
    :green_star             => 0,
    :red_star               => 0,
    :blue_star              => 1,
    :gold_star              => 1,
    :shoe                   => 0,
    :rising_star            => 0,
    :excellence             => 1,
    :number_1               => 1,
    :bolder_boulder         => 0,
    :non_stop_2             => true,
    :non_stop_4             => false,
    :non_stop_6             => true,
    :student_id             => 2,
})

AwardRule.create({
    :award                   => "water_bottle",
    :rule                    => 8,
    :description             => "Plastic water bottle with Fitness Club logo"
})

AwardRule.create({
    :award                   => "race_hat",
    :rule                    => 16,
    :description             => "Billed cap with Fitness Club logo"
})

AwardRule.create({
    :award                   => "green_star",
    :rule                    => 26,
    :description             => "Green Star pin"
})

AwardRule.create({
    :award                   => "red_star",
    :rule                    => 52,
    :description             => "Red Star pin"
})

AwardRule.create({
    :award                   => "blue_star",
    :rule                    => 78,
    :description             => "Blue Star pin"
})

AwardRule.create({
    :award                   => "gold_star",
    :rule                    => 100,
    :description             => "Gold Star pin"
})
