class Teacher < ActiveRecord::Base

    has_many :students
    has_many :coaches

    attr_accessible(:letter_code)
    attr_accessible(:grade)

end