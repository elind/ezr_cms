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

ActiveRecord::Schema.define(:version => 20080914165042) do

  create_table "ezr_content_class_attributes", :force => true do |t|
    t.string   "identifier"
    t.string   "display_name"
    t.integer  "ezr_content_class_id"
    t.string   "atype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ezr_content_classes", :force => true do |t|
    t.string   "identifier"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ezr_content_object_attributes", :force => true do |t|
    t.integer  "content_class_attribute_id"
    t.string   "identifier"
    t.string   "display_name"
    t.string   "atype"
    t.integer  "ezr_content_object_id"
    t.integer  "int_value"
    t.float    "float_value"
    t.string   "string_value"
    t.text     "text_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ezr_content_objects", :force => true do |t|
    t.string   "identifier"
    t.string   "display_name"
    t.integer  "ezr_content_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
