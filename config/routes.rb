FitnessClub::Application.routes.draw do

    get  "/"                    => redirect("/admin/login")
    
    get  "/admin/login"         => "admin#login",         :as => "admin_login"
    post "/admin/login"         => "admin#check_login",   :as => "admin_check_login"
    get  "/admin"               => "admin#index",         :as => "admin_index"
    post "/admin/logout"        => "admin#logout",        :as => "admin_logout"

    get  "/family"              => "family#index",        :as => "family_index"
    get  "/family/new"          => "family#new",          :as => "family_new"
    post "/family"              => "family#create",       :as => "family_create"
    get  "/family/:id"          => "family#edit",         :as => "family_edit"
    post "/family/:id"          => "family#update",       :as => "family_update"
    get  "/family/delete/:id"   => "family#destroy",      :as => "family_destroy"

    get  "/student"             => "student#index",       :as => "student_index"
    get  "/student/new"         => "student#new",         :as => "student_new"
    post "/student"             => "student#create",      :as => "student_create"
    get  "/student/:id"         => "student#edit",        :as => "student_edit"
    post "/student/:id"         => "student#update",      :as => "student_update"
    get  "/student/delete/:id"  => "student#destroy",     :as => "student_destroy"

    get "/report/total_mileage"         => "report#total_mileage",        :as => "report_total_mileage"
    get "/report/student_awards"        => "report#student_awards",       :as => "report_student_awards"
    get "/report/family_registrations"  => "report#family_registrations", :as => "report_family_registrations"
end

#          family GET    /family(.:format)          family#index
#                 POST   /family(.:format)          family#create
#      new_family GET    /family/new(.:format)      family#new
#     edit_family GET    /family/:id/edit(.:format) family#edit
#          family GET    /family/:id(.:format)      family#show
#                 PUT    /family/:id(.:format)      family#update
#                 DELETE /family/:id(.:format)      family#destroy


#  get  "/"                              => "real_estate#root"
#  get  "/view_properties"               => "real_estate#view_properties"
#  get  "/view_property/:property_id"    => "real_estate#view_property"
#  get  "/admin_login"                   => "admin#admin_login_get"
#  post "/admin_login"                   => "admin#admin_login_post"
#  get  "/edit_properties"               => "admin#edit_properties" 
#  post "/edit_properties"               => "admin#logout"
#  get  "/edit_property/:property_id"    => "admin#edit_property_get"
#  post "/edit_property/:property_id"    => "admin#edit_property_post"
#  get  "/add_new_property"              => "admin#add_new_property"
#  post "/create_property"               => "admin#create_property"
#  post "/logout"                        => "admin#logout"  
