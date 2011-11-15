# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111114171024) do

  create_table "campaings", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.date     "date_ini"
    t.date     "date_end"
    t.string   "responsible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "volunteer_id"
    t.integer  "parish_id"
    t.string   "group_photo"
    t.boolean  "state"
  end

  create_table "helps", :force => true do |t|
    t.text     "what_is_persons_problem"
    t.string   "type_of_help"
    t.string   "was_derive_to_some_institution"
    t.date     "date_of_help"
    t.text     "detail"
    t.text     "observation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "social_card_id"
  end

  create_table "history_courses", :force => true do |t|
    t.string   "instructor"
    t.date     "dateCourse"
    t.integer  "idCourse"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "idParish"
    t.string   "idGroup"
  end

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "notice_type"
    t.boolean  "is_published"
    t.date     "last_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "notice_photo"
  end

  create_table "parishes", :force => true do |t|
    t.string   "parish_name"
    t.string   "ubication"
    t.string   "transport"
    t.integer  "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pastor_id"
    t.string   "contact"
    t.string   "contact_telephone"
    t.integer  "vicariou_id"
    t.string   "parish_photo"
    t.boolean  "state",             :default => true
    t.string   "current_state"
  end

  create_table "pastors", :force => true do |t|
    t.string   "name"
    t.string   "primary_last_name"
    t.string   "second_last_name"
    t.integer  "phone_number"
    t.integer  "cellphone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_birth"
    t.boolean  "state"
  end

  create_table "progresses", :force => true do |t|
    t.integer  "workshop_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_cards", :force => true do |t|
    t.date     "date"
    t.string   "parish_church"
    t.string   "name"
    t.string   "marital_status"
    t.string   "gender"
    t.date     "birthday"
    t.string   "birthday_location"
    t.integer  "identity_card"
    t.integer  "phone"
    t.integer  "movil"
    t.string   "address"
    t.string   "location_reference"
    t.string   "grade_school"
    t.string   "occupation"
    t.string   "family_members"
    t.string   "parish_belongs"
    t.text     "family_history"
    t.string   "derivative_by"
    t.string   "reference_person"
    t.string   "address_reference"
    t.integer  "phone_reference"
    t.integer  "movil_reference"
    t.integer  "age_reference"
    t.string   "occupation_reference"
    t.string   "type_of_case"
    t.text     "did_you_get_another_help"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "what_kind"
  end

  create_table "social_works", :force => true do |t|
    t.string   "parish"
    t.string   "social_work"
    t.string   "responsible"
    t.string   "location"
    t.integer  "phone"
    t.integer  "movil"
    t.string   "email"
    t.string   "transport"
    t.text     "description"
    t.string   "responsible_filling"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vicarious", :force => true do |t|
    t.string   "name_vicariou"
    t.string   "ubication"
    t.string   "transport"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pastor_id"
    t.boolean  "state",         :default => true
  end

  create_table "volunteers", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "second_last_name"
    t.string   "profession"
    t.integer  "phone_number"
    t.integer  "movil"
    t.date     "date_of_birth"
    t.string   "genre"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.string   "email"
    t.boolean  "state"
    t.string   "volunteer_photo"
  end

  create_table "workshops", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "in_charge"
    t.string   "course"
    t.text     "observations"
    t.integer  "parish_id"
  end

  create_table "workshops_courses", :force => true do |t|
    t.integer "workshop_id"
    t.integer "course_id"
  end

  create_table "workshops_volunteers", :force => true do |t|
    t.integer "workshop_id"
    t.integer "volunteer_id"
  end

end
