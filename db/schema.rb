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

ActiveRecord::Schema.define(:version => 20110819031520) do

  create_table "nflplayers", :force => true do |t|
    t.string   "name"
    t.string   "position"
    t.string   "picurl"
    t.string   "wk1opp"
    t.string   "wk2opp"
    t.string   "wk3opp"
    t.string   "wk4opp"
    t.string   "wk5opp"
    t.string   "wk6opp"
    t.string   "wk7opp"
    t.string   "wk1field"
    t.string   "wk2field"
    t.string   "wk3field"
    t.string   "wk4field"
    t.string   "wk5field"
    t.string   "wk6field"
    t.string   "wk7field"
    t.string   "team"
    t.integer  "wk1points"
    t.integer  "wk2points"
    t.integer  "wk3points"
    t.integer  "wk4points"
    t.integer  "wk5points"
    t.integer  "wk6points"
    t.integer  "wk7points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
