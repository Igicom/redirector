# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120815212612) do

  create_table "redirect_rules", :force => true do |t|
    t.string   "source",                             :null => false
    t.boolean  "source_is_regex", :default => false, :null => false
    t.string   "destination",                        :null => false
    t.boolean  "active",          :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "redirect_rules", ["active"], :name => "index_redirect_rules_on_active"
  add_index "redirect_rules", ["source"], :name => "index_redirect_rules_on_source"

end
