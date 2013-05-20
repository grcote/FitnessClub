class Family < ActiveRecord::Base

    has_many :students
    has_one :registration

    validates_presence_of :parent_first_name,
         :message => "Parent's first name is required"
    validates_presence_of :parent_last_name,
         :message => "Parent's last name is required"

    attr_accessible(:parent_first_name)
    attr_accessible(:parent_last_name)
    attr_accessible(:chaperone_first_name)
    attr_accessible(:chaperone_last_name)
    attr_accessible(:home_phone)
    attr_accessible(:cell_phone)
    attr_accessible(:work_phone)
    attr_accessible(:email)
    attr_accessible(:signature)

end