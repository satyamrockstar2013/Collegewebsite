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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160322065518) do

  create_table "a_branch", primary_key: "bshort", force: :cascade do |t|
    t.string "bname", limit: 100
  end

  create_table "alumni", force: :cascade do |t|
    t.string "password",      limit: 200
    t.string "name",          limit: 100
    t.string "gender",        limit: 1
    t.string "email",         limit: 100
    t.string "address",       limit: 100
    t.string "hcity",         limit: 30
    t.string "hstate",        limit: 30
    t.string "hphone",        limit: 20
    t.string "pincode",       limit: 10
    t.string "bshort",        limit: 10
    t.string "gpassout",      limit: 5
    t.string "pgdegree",      limit: 10
    t.string "pgbranch",      limit: 100
    t.string "pgpassout",     limit: 5
    t.string "pgcollegename", limit: 100
    t.string "company",       limit: 100
    t.string "worktitle",     limit: 100
    t.string "worksince",     limit: 5
    t.string "wphone",        limit: 20
    t.string "wcity",         limit: 100
    t.string "wstate",        limit: 100
    t.string "wcountry",      limit: 100
    t.string "rollno",        limit: 10
    t.string "fname",         limit: 100
    t.string "focc",          limit: 100
    t.string "gates",         limit: 10
    t.string "cats",          limit: 10
    t.string "ies",           limit: 10
    t.string "toefl",         limit: 10
    t.string "gre",           limit: 10
    t.string "gmat",          limit: 10
    t.string "ielts",         limit: 10
    t.string "fplans",        limit: 100
    t.string "achievements",  limit: 100
    t.string "crcompany",     limit: 50
    t.string "mobile",        limit: 50
    t.string "email1",        limit: 50
    t.date   "dob"
    t.string "gater",         limit: 5
    t.string "catr",          limit: 5
  end

  add_index "alumni", ["bshort"], name: "alumni_a_branch_fk", using: :btree

  create_table "alumni_message", id: false, force: :cascade do |t|
    t.string   "id",      limit: 30
    t.string   "message", limit: 500
    t.datetime "time",                null: false
  end

  create_table "ane_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "ane_stu_dailyattendance", ["stid"], name: "ane_stu_attend_stu_master_fk1", using: :btree

  create_table "autinternals", id: false, force: :cascade do |t|
    t.string  "year",       limit: 8
    t.string  "semester",   limit: 15, null: false
    t.string  "subject",    limit: 25, null: false
    t.integer "coding",     limit: 4
    t.string  "rollnumber", limit: 10, null: false
    t.string  "month",      limit: 20
  end

  create_table "auto_ac", primary_key: "notice", force: :cascade do |t|
    t.string   "bid",      limit: 2
    t.string   "headline", limit: 500
    t.datetime "time",                  null: false
    t.string   "status",   limit: 1
    t.string   "file",     limit: 1000
  end

  create_table "auto_notices", id: false, force: :cascade do |t|
    t.string   "bid",      limit: 2
    t.string   "headline", limit: 500
    t.string   "notice",   limit: 2000
    t.datetime "time",                  null: false
    t.string   "status",   limit: 1
    t.string   "file",     limit: 1000
  end

  create_table "auto_results", primary_key: "notice", force: :cascade do |t|
    t.string   "bid",      limit: 2
    t.string   "headline", limit: 500
    t.datetime "time",                  null: false
    t.string   "status",   limit: 1
    t.string   "file",     limit: 1000
  end

  create_table "auto_timetables", primary_key: "notice", force: :cascade do |t|
    t.string   "bid",      limit: 2
    t.string   "headline", limit: 500
    t.datetime "time",                 null: false
    t.string   "status",   limit: 1
    t.string   "file",     limit: 500
  end

  create_table "batch_status", id: false, force: :cascade do |t|
    t.string "batch",             limit: 2
    t.string "ry",                limit: 2
    t.string "year_commencement", limit: 4
  end

  create_table "branchmap", primary_key: "bid", force: :cascade do |t|
    t.string  "bshort", limit: 20
    t.string  "bname",  limit: 100
    t.integer "sid",    limit: 4
  end

  create_table "branchmap1", primary_key: "bid", force: :cascade do |t|
    t.string "bshort", limit: 10
    t.string "bname",  limit: 100
  end

  create_table "category", primary_key: "ccode", force: :cascade do |t|
    t.string "cname", limit: 20
  end

  create_table "ccub_notic", id: false, force: :cascade do |t|
    t.string   "bshort",   limit: 10
    t.string   "headline", limit: 500
    t.string   "notice",   limit: 2000
    t.datetime "time",                  null: false
  end

  create_table "complaints", id: false, force: :cascade do |t|
    t.string "bid",  limit: 2
    t.string "msg",  limit: 500
    t.string "type", limit: 1
  end

  create_table "countries", id: false, force: :cascade do |t|
    t.integer "CountryID",   limit: 4
    t.text    "CountryName", limit: 65535
  end

  create_table "cse_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "cse_stu_dailyattendance", ["stid"], name: "cse_stu_attend_stu_master_fk1", using: :btree

  create_table "cvl_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "cvl_stu_dailyattendance", ["stid"], name: "cvl_stu_attend_stu_master_fk1", using: :btree

  create_table "database_structures", force: :cascade do |t|
  end

  create_table "dep_notice", id: false, force: :cascade do |t|
    t.string   "bid",       limit: 2
    t.string   "headline",  limit: 500
    t.string   "notice",    limit: 500
    t.datetime "time",                  null: false
    t.string   "status",    limit: 1
    t.string   "file_name", limit: 500
  end

  create_table "ece_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "ece_stu_dailyattendance", ["stid"], name: "ece_stu_attend_stu_master_fk1", using: :btree

  create_table "ecm_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "ecm_stu_dailyattendance", ["stid"], name: "ecm_stu_attend_stu_master_fk1", using: :btree

  create_table "eee_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "eee_stu_dailyattendance", ["stid"], name: "eee_stu_attend_stu_master_fk1", using: :btree

  create_table "electives", id: false, force: :cascade do |t|
    t.string "stid",        limit: 10, null: false
    t.string "subjectcode", limit: 10, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "exam_boards", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "external_activities", id: false, force: :cascade do |t|
    t.string "staff_name",        limit: 50
    t.string "topic_name",        limit: 100
    t.string "topic_description", limit: 500
    t.string "college_name",      limit: 100
    t.string "college_add",       limit: 200
    t.date   "fdate"
    t.date   "tdate"
    t.string "type",              limit: 1
    t.string "bid",               limit: 5
  end

  create_table "external_expert", id: false, force: :cascade do |t|
    t.string "activity_details", limit: 150
    t.date   "date"
    t.string "type",             limit: 1
    t.string "bid",              limit: 5
  end

  create_table "external_referee", id: false, force: :cascade do |t|
    t.string "organization_name", limit: 100
    t.string "organization_add",  limit: 200
    t.string "event_details",     limit: 200
    t.string "type",              limit: 1
    t.string "bid",               limit: 5
    t.date   "date"
  end

  create_table "external_resourceperson", id: false, force: :cascade do |t|
    t.string "organization_name", limit: 150
    t.string "organization_add",  limit: 500
    t.string "purpose",           limit: 300
    t.string "type",              limit: 1
    t.string "bid",               limit: 5
    t.date   "date"
  end

  create_table "external_reviewer", id: false, force: :cascade do |t|
    t.string "journal_name", limit: 150
    t.string "publisher",    limit: 100
    t.date   "date"
    t.string "type",         limit: 1
    t.string "bid",          limit: 5
  end

  create_table "feedback_assessment", primary_key: "priority", force: :cascade do |t|
    t.string "description", limit: 500
  end

  create_table "geometry_columns", id: false, force: :cascade do |t|
    t.string  "f_table_catalog",   limit: 256, null: false
    t.string  "f_table_schema",    limit: 256, null: false
    t.string  "f_table_name",      limit: 256, null: false
    t.string  "f_geometry_column", limit: 256, null: false
    t.integer "coord_dimension",   limit: 4,   null: false
    t.integer "srid",              limit: 4,   null: false
    t.string  "type",              limit: 30,  null: false
  end

  create_table "hit_counter", primary_key: "count", force: :cascade do |t|
  end

  create_table "inf_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "inf_stu_dailyattendance", ["stid"], name: "inf_stu_attend_stu_master_fk1", using: :btree

  create_table "internal_activities", id: false, force: :cascade do |t|
    t.string   "bid",                   limit: 5
    t.datetime "time",                              null: false
    t.string   "topic_name",            limit: 100
    t.string   "topic_description",     limit: 500
    t.string   "resource_person_name1", limit: 100
    t.string   "resource_person_add1",  limit: 200
    t.string   "status",                limit: 1
    t.date     "fdate"
    t.date     "tdate"
    t.string   "resource_person_name2", limit: 100
    t.string   "resource_person_add2",  limit: 200
    t.string   "type",                  limit: 1
  end

  create_table "log", id: false, force: :cascade do |t|
    t.string   "loginid",    limit: 15
    t.integer  "updatetype", limit: 4
    t.string   "subid",      limit: 15
    t.datetime "time",                  null: false
    t.string   "ipaddress",  limit: 15
    t.string   "rybid",      limit: 5,  null: false
  end

  add_index "log", ["loginid"], name: "log_login_fk", using: :btree

  create_table "login", primary_key: "loginid", force: :cascade do |t|
    t.string "password", limit: 200
  end

  create_table "mec_stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "mec_stu_dailyattendance", ["stid"], name: "mec_stu_attend_stu_master_fk1", using: :btree

  create_table "nba_results", id: false, force: :cascade do |t|
    t.string  "stid",     limit: 10, null: false
    t.string  "rybid",    limit: 6,  null: false
    t.integer "subint01", limit: 4
    t.integer "subext01", limit: 4
    t.integer "subint02", limit: 4
    t.integer "subext02", limit: 4
    t.integer "subint03", limit: 4
    t.integer "subext03", limit: 4
    t.integer "subint04", limit: 4
    t.integer "subext04", limit: 4
    t.integer "subint05", limit: 4
    t.integer "subext05", limit: 4
    t.integer "subint06", limit: 4
    t.integer "subext06", limit: 4
    t.integer "subint07", limit: 4
    t.integer "subext07", limit: 4
    t.integer "subint08", limit: 4
    t.integer "subext08", limit: 4
    t.integer "subint09", limit: 4
    t.integer "subext09", limit: 4
    t.integer "subint10", limit: 4
    t.integer "subext10", limit: 4
    t.integer "subint11", limit: 4
    t.integer "subext11", limit: 4
    t.integer "subint12", limit: 4
    t.integer "subext12", limit: 4
    t.integer "ac_year",  limit: 4
  end

  create_table "nba_results1", id: false, force: :cascade do |t|
    t.string  "stid",     limit: 10
    t.string  "rybid",    limit: 5
    t.integer "subint01", limit: 4
    t.integer "subext01", limit: 4
    t.integer "subint02", limit: 4
    t.integer "subext02", limit: 4
    t.integer "subint03", limit: 4
    t.integer "subext03", limit: 4
    t.integer "subint04", limit: 4
    t.integer "subext04", limit: 4
    t.integer "subint05", limit: 4
    t.integer "subext05", limit: 4
    t.integer "subint06", limit: 4
    t.integer "subext06", limit: 4
    t.integer "subint07", limit: 4
    t.integer "subext07", limit: 4
    t.integer "subint08", limit: 4
    t.integer "subext08", limit: 4
    t.integer "subint09", limit: 4
    t.integer "subext09", limit: 4
    t.integer "subint10", limit: 4
    t.integer "subext10", limit: 4
    t.integer "subint11", limit: 4
    t.integer "subext11", limit: 4
    t.integer "subint12", limit: 4
    t.integer "subext12", limit: 4
    t.integer "ac_year",  limit: 4
  end

  create_table "news", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "notices", id: false, force: :cascade do |t|
    t.string   "bid",       limit: 2
    t.string   "headline",  limit: 500
    t.string   "notice",    limit: 500
    t.datetime "time",                  null: false
    t.string   "status",    limit: 1
    t.string   "file_name", limit: 500
  end

  create_table "regulationmap", primary_key: "rid", force: :cascade do |t|
    t.string  "rname",    limit: 10
    t.integer "tintmax",  limit: 4
    t.integer "textmax",  limit: 4
    t.integer "pintmax",  limit: 4
    t.integer "pextmax",  limit: 4
    t.integer "pwintmax", limit: 4
    t.integer "pwextmax", limit: 4
    t.string  "degree",   limit: 6
  end

  add_index "regulationmap", ["rid"], name: "rid", unique: true, using: :btree

  create_table "roles", force: :cascade do |t|
  end

  create_table "spatial_ref_sys", primary_key: "srid", force: :cascade do |t|
    t.string  "auth_name", limit: 256
    t.integer "auth_srid", limit: 4
    t.string  "srtext",    limit: 2048
    t.string  "proj4text", limit: 2048
  end

  create_table "sports_notice", id: false, force: :cascade do |t|
    t.string   "bshort",   limit: 10
    t.string   "headline", limit: 500
    t.string   "notice",   limit: 2000
    t.datetime "time",                  null: false
  end

  create_table "staff_adjustments", id: false, force: :cascade do |t|
    t.string "rybsid",  limit: 8, null: false
    t.string "sub_no",  limit: 2
    t.string "hour_no", limit: 2, null: false
    t.string "ac_year", limit: 4
    t.date   "date",              null: false
  end

  create_table "staff_cms", id: false, force: :cascade do |t|
    t.string "staffid",           limit: 10
    t.string "rybssid",           limit: 10
    t.string "topic_name",        limit: 100
    t.string "topic_description", limit: 500
    t.date   "date"
    t.string "file_name",         limit: 50
  end

  create_table "staff_invigilation", id: false, force: :cascade do |t|
    t.string "staffid", limit: 15, null: false
    t.string "date",    limit: 4,  null: false
    t.string "session", limit: 1,  null: false
    t.string "confirm", limit: 1
  end

  create_table "staff_master", primary_key: "staffid", force: :cascade do |t|
    t.string  "name",          limit: 100
    t.date    "dob"
    t.string  "laddress",      limit: 200
    t.string  "lphone",        limit: 20
    t.string  "paddress",      limit: 200
    t.string  "pphone",        limit: 20
    t.string  "mobile",        limit: 20
    t.string  "email",         limit: 100
    t.date    "doj"
    t.string  "bid",           limit: 2
    t.integer "designation",   limit: 4
    t.string  "qualification", limit: 80
    t.integer "priority",      limit: 4,   default: 100, null: false
    t.string  "nrpjc",         limit: 200
    t.string  "gender",        limit: 1
    t.string  "status",        limit: 1
    t.string  "path",          limit: 150
    t.string  "profile",       limit: 200
  end

  create_table "staff_subjects", primary_key: "rybssid", force: :cascade do |t|
    t.string "staffid", limit: 15
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staffid",       limit: 255
    t.string   "name",          limit: 255
    t.date     "dob"
    t.text     "laddress",      limit: 65535
    t.string   "lphone",        limit: 255
    t.text     "address",       limit: 65535
    t.string   "pphone",        limit: 255
    t.string   "mobile",        limit: 255
    t.string   "email",         limit: 255
    t.date     "doj"
    t.string   "bid",           limit: 255
    t.integer  "designation",   limit: 4
    t.text     "qualification", limit: 65535
    t.integer  "priority",      limit: 4
    t.text     "nrpjc",         limit: 65535
    t.string   "gender",        limit: 255
    t.string   "status",        limit: 255
    t.string   "path",          limit: 255
    t.string   "profile",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "stu_absenties", id: false, force: :cascade do |t|
    t.string  "rybsid", limit: 6,  null: false
    t.string  "stid",   limit: 10, null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
  end

  create_table "stu_attend", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10,                null: false
    t.string  "rybsid",  limit: 6,                 null: false
    t.integer "month",   limit: 4,                 null: false
    t.integer "sub01",   limit: 4
    t.integer "sub02",   limit: 4
    t.integer "sub03",   limit: 4
    t.integer "sub04",   limit: 4
    t.integer "sub05",   limit: 4
    t.integer "sub06",   limit: 4
    t.integer "sub07",   limit: 4
    t.integer "sub08",   limit: 4
    t.integer "sub09",   limit: 4
    t.integer "sub10",   limit: 4
    t.integer "sub11",   limit: 4
    t.integer "sub12",   limit: 4
    t.integer "sub13",   limit: 4
    t.integer "sub14",   limit: 4
    t.integer "sub15",   limit: 4
    t.integer "sub16",   limit: 4
    t.integer "ac_year", limit: 4,  default: 2013, null: false
  end

  add_index "stu_attend", ["stid"], name: "stu_attend_stu_master_fk", using: :btree

  create_table "stu_attschedule", id: false, force: :cascade do |t|
    t.string "rybsid", limit: 8,  null: false
    t.date   "date",              null: false
    t.string "hour01", limit: 50
    t.string "hour02", limit: 50
    t.string "hour03", limit: 50
    t.string "hour04", limit: 50
    t.string "hour05", limit: 50
    t.string "hour06", limit: 50
    t.string "hour07", limit: 50
    t.string "hour08", limit: 50
    t.string "hour00", limit: 50
    t.string "hour09", limit: 50
  end

  create_table "stu_dailyattendance", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "rybsid", limit: 8,  null: false
    t.date    "date",              null: false
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
    t.integer "sub15",  limit: 4
  end

  add_index "stu_dailyattendance", ["stid"], name: "stu_attend_stu_master_fk1", using: :btree

  create_table "stu_dailyattendance_lab", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10
    t.string  "rybsid", limit: 8
    t.date    "date"
    t.integer "sub01",  limit: 4
    t.integer "sub02",  limit: 4
    t.integer "sub03",  limit: 4
    t.integer "sub04",  limit: 4
    t.integer "sub05",  limit: 4
    t.integer "sub06",  limit: 4
    t.integer "sub07",  limit: 4
    t.integer "sub08",  limit: 4
    t.integer "sub09",  limit: 4
    t.integer "sub10",  limit: 4
    t.integer "sub11",  limit: 4
    t.integer "sub12",  limit: 4
    t.integer "sub13",  limit: 4
    t.integer "sub14",  limit: 4
  end

  add_index "stu_dailyattendance_lab", ["stid"], name: "stu_daily_lab_stu_master_fk", using: :btree

  create_table "stu_dailyattendance_proj", id: false, force: :cascade do |t|
    t.string  "stid",        limit: 10, null: false
    t.string  "rybsid",      limit: 10, null: false
    t.date    "date",                   null: false
    t.integer "project",     limit: 4
    t.integer "total_hours", limit: 4
  end

  create_table "stu_detain", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10, null: false
    t.string  "rybid",   limit: 5
    t.string  "type",    limit: 1
    t.integer "ac_year", limit: 4,  null: false
  end

  create_table "stu_fb_admin", primary_key: "stid", force: :cascade do |t|
    t.string  "ybsid",          limit: 4
    t.integer "cclean",         limit: 4
    t.integer "pclean",         limit: 4
    t.integer "amenities",      limit: 4
    t.integer "labeqp",         limit: 4
    t.integer "library",        limit: 4
    t.integer "clearingreps",   limit: 4
    t.integer "accesstop",      limit: 4
    t.integer "phyedu",         limit: 4
    t.integer "curricularwork", limit: 4
    t.integer "suppstaff",      limit: 4
    t.integer "culclub",        limit: 4
    t.integer "hodoffice",      limit: 4
    t.integer "mainoffice",     limit: 4
    t.integer "examcell",       limit: 4
    t.integer "tapcell",        limit: 4
  end

  create_table "stu_fb_college", id: false, force: :cascade do |t|
    t.string   "stid",       limit: 10
    t.string   "rybsid",     limit: 6
    t.datetime "date",                   null: false
    t.string   "dept_fb",    limit: 500
    t.string   "suggession", limit: 500
  end

  create_table "stu_fb_staff", id: false, force: :cascade do |t|
    t.string   "stid",     limit: 10,  null: false
    t.string   "rybssid",  limit: 8,   null: false
    t.integer  "dap1",     limit: 4
    t.integer  "dap2",     limit: 4
    t.integer  "dap3",     limit: 4
    t.integer  "dap4",     limit: 4
    t.integer  "dap5",     limit: 4
    t.integer  "dap6",     limit: 4
    t.integer  "dap7",     limit: 4
    t.integer  "dap8",     limit: 4
    t.integer  "dap9",     limit: 4
    t.integer  "dap10",    limit: 4
    t.integer  "dap11",    limit: 4
    t.string   "strength", limit: 500
    t.string   "weakness", limit: 500
    t.datetime "date",                 null: false
  end

  create_table "stu_fb_stu", primary_key: "stid", force: :cascade do |t|
    t.string  "ybsid",           limit: 4
    t.integer "attend",          limit: 4
    t.integer "cnotes",          limit: 4
    t.integer "snotes",          limit: 4
    t.string  "bunkoff",         limit: 1
    t.integer "timings",         limit: 4
    t.integer "assignments",     limit: 4
    t.integer "interaction",     limit: 4
    t.integer "cocurricular",    limit: 4
    t.integer "extracurricular", limit: 4
    t.integer "labreport",       limit: 4
    t.integer "creading",        limit: 4
    t.integer "readathome",      limit: 4
    t.integer "libuse",          limit: 4
    t.integer "labofftime",      limit: 4
    t.integer "swpractice",      limit: 4
  end

  create_table "stu_fmidmarks", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10, null: false
    t.string  "ybsid",   limit: 4,  null: false
    t.integer "sub01",   limit: 4
    t.integer "sub02",   limit: 4
    t.integer "sub03",   limit: 4
    t.integer "sub04",   limit: 4
    t.integer "sub05",   limit: 4
    t.integer "sub06",   limit: 4
    t.integer "sub07",   limit: 4
    t.integer "sub08",   limit: 4
    t.integer "sub09",   limit: 4
    t.integer "sub10",   limit: 4
    t.integer "sub11",   limit: 4
    t.integer "sub12",   limit: 4
    t.integer "ac_year", limit: 4,  null: false
    t.integer "rid",     limit: 4
  end

  create_table "stu_labbatch", id: false, force: :cascade do |t|
    t.string  "subid",   limit: 10, null: false
    t.integer "batch",   limit: 4,  null: false
    t.string  "stid",    limit: 10, null: false
    t.string  "ybid",    limit: 3,  null: false
    t.integer "ac_year", limit: 4,  null: false
  end

  add_index "stu_labbatch", ["stid"], name: "stu_labbatch_stu_master_fk", using: :btree

  create_table "stu_leaves", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10, null: false
    t.integer "classes", limit: 4
    t.integer "month",   limit: 4,  null: false
    t.string  "ybsid",   limit: 4
  end

  create_table "stu_master", primary_key: "stid", force: :cascade do |t|
    t.string  "sname",   limit: 100
    t.string  "bid",     limit: 2
    t.string  "toa",     limit: 1
    t.integer "ccode",   limit: 4
    t.integer "rfy",     limit: 4
    t.integer "session", limit: 4
    t.date    "doa"
    t.date    "dob"
    t.string  "erank",   limit: 10
    t.string  "tfee",    limit: 10
    t.string  "gender",  limit: 1
  end

  add_index "stu_master", ["bid"], name: "stu_master_branchmap_fk", using: :btree
  add_index "stu_master", ["ccode"], name: "stu_master_category_fk", using: :btree

  create_table "stu_master1", primary_key: "stid", force: :cascade do |t|
    t.string "fname",         limit: 100
    t.string "laddress",      limit: 500
    t.string "lphone",        limit: 40
    t.string "paddress",      limit: 250
    t.string "pphone",        limit: 40
    t.string "focc",          limit: 40
    t.string "fanninc",       limit: 10
    t.string "idmarks",       limit: 200
    t.string "sscpercent",    limit: 6
    t.string "sscyop",        limit: 5
    t.string "interpercent",  limit: 6
    t.string "interyop",      limit: 5
    t.string "email",         limit: 100
    t.string "qualification", limit: 1
  end

  create_table "stu_midmarks", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10, null: false
    t.string  "ybsid",   limit: 4,  null: false
    t.integer "mid",     limit: 4,  null: false
    t.integer "sub01",   limit: 4
    t.integer "sub02",   limit: 4
    t.integer "sub03",   limit: 4
    t.integer "sub04",   limit: 4
    t.integer "sub05",   limit: 4
    t.integer "sub06",   limit: 4
    t.integer "sub07",   limit: 4
    t.integer "sub08",   limit: 4
    t.integer "sub09",   limit: 4
    t.integer "sub10",   limit: 4
    t.integer "sub11",   limit: 4
    t.integer "sub12",   limit: 4
    t.integer "ac_year", limit: 4,  null: false
    t.integer "rid",     limit: 4
  end

  create_table "stu_miniproject", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10, null: false
    t.string  "ybsid",   limit: 4,  null: false
    t.integer "mtpmp",   limit: 4
    t.integer "memp",    limit: 4
    t.integer "faamp",   limit: 4
    t.integer "ocmp",    limit: 4
    t.integer "bemp",    limit: 4
    t.integer "qabdmp",  limit: 4
    t.integer "dbmsmp",  limit: 4
    t.integer "ac_year", limit: 4,  null: false
    t.integer "rid",     limit: 4
  end

  create_table "stu_offset", id: false, force: :cascade do |t|
    t.string  "stid",      limit: 10,             null: false
    t.string  "ybsid",     limit: 4,              null: false
    t.integer "reduction", limit: 4
    t.integer "sports",    limit: 4
    t.integer "seminars",  limit: 4
    t.integer "reas",      limit: 2,  default: 0
    t.integer "rid",       limit: 4
  end

  create_table "stu_project", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 25,  null: false
    t.string  "rybid",   limit: 15,  null: false
    t.integer "seminar", limit: 4
    t.string  "project", limit: 525
    t.string  "ac_year", limit: 4
  end

  create_table "stu_status", primary_key: "stid", force: :cascade do |t|
    t.string  "ybsid",    limit: 4
    t.string  "status",   limit: 1
    t.integer "rid",      limit: 8,             null: false
    t.integer "priority", limit: 4
    t.integer "year",     limit: 4, default: 0
  end

  add_index "stu_status", ["rid"], name: "rid", unique: true, using: :btree

  create_table "stu_timetables", id: false, force: :cascade do |t|
    t.string "day",    limit: 3,  null: false
    t.string "rybsid", limit: 20, null: false
    t.string "hour01", limit: 20
    t.string "hour02", limit: 20
    t.string "hour03", limit: 20
    t.string "hour04", limit: 20
    t.string "hour05", limit: 20
    t.string "hour06", limit: 20
    t.string "hour07", limit: 20
    t.string "hour08", limit: 20
  end

  create_table "stu_timetables_lab", id: false, force: :cascade do |t|
    t.string "day",      limit: 3,  null: false
    t.string "ybsid",    limit: 7,  null: false
    t.string "shortcut", limit: 15, null: false
    t.string "batch",    limit: 1
  end

  create_table "stu_totalmarks", id: false, force: :cascade do |t|
    t.string  "stid",       limit: 20, null: false
    t.integer "total",      limit: 2
    t.float   "percentage", limit: 53
  end

  create_table "stu_totmarks", id: false, force: :cascade do |t|
    t.string  "stid",     limit: 10, null: false
    t.string  "rybid",    limit: 5,  null: false
    t.integer "subint01", limit: 4
    t.integer "subext01", limit: 4
    t.integer "subint02", limit: 4
    t.integer "subext02", limit: 4
    t.integer "subint03", limit: 4
    t.integer "subext03", limit: 4
    t.integer "subint04", limit: 4
    t.integer "subext04", limit: 4
    t.integer "subint05", limit: 4
    t.integer "subext05", limit: 4
    t.integer "subint06", limit: 4
    t.integer "subext06", limit: 4
    t.integer "subint07", limit: 4
    t.integer "subext07", limit: 4
    t.integer "subint08", limit: 4
    t.integer "subext08", limit: 4
    t.integer "subint09", limit: 4
    t.integer "subext09", limit: 4
    t.integer "subint10", limit: 4
    t.integer "subext10", limit: 4
    t.integer "subint11", limit: 4
    t.integer "subext11", limit: 4
    t.integer "subint12", limit: 4
    t.integer "subext12", limit: 4
    t.integer "ac_year",  limit: 4
  end

  create_table "stu_totmarks1", id: false, force: :cascade do |t|
    t.string  "stid",   limit: 10, null: false
    t.string  "subid",  limit: 10, null: false
    t.integer "suppno", limit: 4,  null: false
    t.string  "my",     limit: 6
    t.string  "rybid",  limit: 4,  null: false
    t.integer "subint", limit: 4
    t.integer "subext", limit: 4
  end

  create_table "subject", id: false, force: :cascade do |t|
    t.string  "rybid",      limit: 5,   null: false
    t.string  "subid",      limit: 10,  null: false
    t.string  "subname",    limit: 150
    t.string  "shortcut",   limit: 15
    t.integer "maxcredits", limit: 4
    t.string  "type",       limit: 1
    t.string  "no",         limit: 2
  end

  create_table "subject_att", id: false, force: :cascade do |t|
    t.string  "rybid",      limit: 5,   null: false
    t.string  "subid",      limit: 10,  null: false
    t.string  "subname",    limit: 100
    t.string  "shortcut",   limit: 15
    t.integer "maxcredits", limit: 4
    t.string  "type",       limit: 1
    t.string  "no",         limit: 2
  end

  create_table "tcf_certificate", primary_key: "reg_no", force: :cascade do |t|
    t.string "certificate_issue", limit: 1
  end

  create_table "tcf_events", id: false, force: :cascade do |t|
    t.integer "lce_no",     limit: 4
    t.string  "event_name", limit: 80
  end

  create_table "tcf_lce1", id: false, force: :cascade do |t|
    t.string "stid",   limit: 15
    t.string "branch", limit: 2
    t.string "lce",    limit: 80
  end

  create_table "tcf_me", id: false, force: :cascade do |t|
    t.string "stid",   limit: 10
    t.string "me",     limit: 60
    t.string "branch", limit: 2
  end

  create_table "tcf_personal", primary_key: "stid", force: :cascade do |t|
    t.string  "stname",          limit: 50
    t.string  "branch",          limit: 2
    t.integer "year",            limit: 2
    t.string  "cname",           limit: 50
    t.string  "mailid",          limit: 50
    t.string  "phoneno",         limit: 25
    t.string  "ppname",          limit: 50
    t.integer "registration_no", limit: 4,  default: 1000
    t.boolean "accom"
  end

  create_table "tech", primary_key: "reg_no", force: :cascade do |t|
    t.string   "sname",    limit: 50
    t.string   "branch",   limit: 10
    t.string   "year",     limit: 1
    t.string   "cname",    limit: 100
    t.string   "adress",   limit: 1000
    t.string   "mobileno", limit: 15
    t.string   "emailid",  limit: 50
    t.string   "event1",   limit: 50
    t.string   "event2",   limit: 50
    t.string   "event3",   limit: 50
    t.string   "event4",   limit: 50
    t.string   "event5",   limit: 50
    t.string   "event6",   limit: 50
    t.string   "event7",   limit: 50
    t.string   "event8",   limit: 50
    t.string   "event9",   limit: 50
    t.string   "event10",  limit: 50
    t.string   "event11",  limit: 11
    t.string   "event12",  limit: 12
    t.datetime "date",                  null: false
    t.string   "aco",      limit: 1
    t.string   "eve13",    limit: 50
    t.string   "eve14",    limit: 50
    t.string   "tmn",      limit: 1000
    t.string   "ddn",      limit: 15
    t.string   "bn",       limit: 100
    t.string   "dddt",     limit: 100
    t.string   "dda",      limit: 10
  end

  create_table "temp_att", id: false, force: :cascade do |t|
    t.string  "stid",    limit: 10
    t.string  "rybsid",  limit: 6
    t.integer "month",   limit: 4
    t.integer "sub01",   limit: 4
    t.integer "sub02",   limit: 4
    t.integer "sub03",   limit: 4
    t.integer "sub04",   limit: 4
    t.integer "sub05",   limit: 4
    t.integer "sub06",   limit: 4
    t.integer "sub07",   limit: 4
    t.integer "sub08",   limit: 4
    t.integer "sub09",   limit: 4
    t.integer "sub10",   limit: 4
    t.integer "sub11",   limit: 4
    t.integer "sub12",   limit: 4
    t.integer "sub13",   limit: 4
    t.integer "sub14",   limit: 4
    t.integer "sub15",   limit: 4
    t.integer "sub16",   limit: 4
    t.integer "ac_year", limit: 4
  end

  create_table "tpcompany", id: false, force: :cascade do |t|
    t.integer "id",        limit: 8,   null: false
    t.string  "name",      limit: 100
    t.string  "address",   limit: 100
    t.string  "city",      limit: 50
    t.string  "type",      limit: 1
    t.string  "phone",     limit: 50
    t.string  "email",     limit: 100
    t.string  "fax",       limit: 50
    t.string  "conperson", limit: 100
  end

  add_index "tpcompany", ["id"], name: "id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "alumni", "a_branch", column: "bshort", primary_key: "bshort", name: "alumni_a_branch_fk"
  add_foreign_key "ane_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "ane_stu_attend_stu_master_fk1"
  add_foreign_key "cse_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "cse_stu_attend_stu_master_fk1"
  add_foreign_key "cvl_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "cvl_stu_attend_stu_master_fk1"
  add_foreign_key "ece_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "ece_stu_attend_stu_master_fk1"
  add_foreign_key "ecm_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "ecm_stu_attend_stu_master_fk1"
  add_foreign_key "eee_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "eee_stu_attend_stu_master_fk1"
  add_foreign_key "inf_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "inf_stu_attend_stu_master_fk1"
  add_foreign_key "log", "login", column: "loginid", primary_key: "loginid", name: "log_login_fk"
  add_foreign_key "mec_stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "mec_stu_attend_stu_master_fk1"
  add_foreign_key "staff_invigilation", "staff_master", column: "staffid", primary_key: "staffid", name: "staff_invigilation_fk"
  add_foreign_key "stu_attend", "stu_master", column: "stid", primary_key: "stid", name: "stu_attend_stu_master_fk"
  add_foreign_key "stu_dailyattendance", "stu_master", column: "stid", primary_key: "stid", name: "stu_attend_stu_master_fk1"
  add_foreign_key "stu_dailyattendance_lab", "stu_master", column: "stid", primary_key: "stid", name: "stu_daily_lab_stu_master_fk"
  add_foreign_key "stu_detain", "stu_master", column: "stid", primary_key: "stid", name: "stu_detain_stu_master_fk"
  add_foreign_key "stu_fb_admin", "stu_master", column: "stid", primary_key: "stid", name: "stu_fb_admin_fk"
  add_foreign_key "stu_fb_staff", "stu_master", column: "stid", primary_key: "stid", name: "stu_fb_staff_fk"
  add_foreign_key "stu_fb_stu", "stu_master", column: "stid", primary_key: "stid", name: "stu_fb_stu_fk"
  add_foreign_key "stu_fmidmarks", "stu_master", column: "stid", primary_key: "stid", name: "stu_fmidmarks_stu_master_fk"
  add_foreign_key "stu_labbatch", "stu_master", column: "stid", primary_key: "stid", name: "stu_labbatch_stu_master_fk"
  add_foreign_key "stu_master", "branchmap", column: "bid", primary_key: "bid", name: "stu_master_branchmap_fk"
  add_foreign_key "stu_master", "category", column: "ccode", primary_key: "ccode", name: "stu_master_category_fk"
  add_foreign_key "stu_master1", "stu_master", column: "stid", primary_key: "stid", name: "stu_master1_stu_master_fk"
  add_foreign_key "stu_midmarks", "stu_master", column: "stid", primary_key: "stid", name: "stu_midmarks_stu_master_fk"
  add_foreign_key "stu_offset", "stu_master", column: "stid", primary_key: "stid", name: "stu_offset_stu_master"
  add_foreign_key "stu_project", "stu_master", column: "stid", primary_key: "stid", name: "stu_proj_stu_master_fk"
  add_foreign_key "stu_status", "regulationmap", column: "rid", primary_key: "rid", name: "stu_status_regulationmap_fk"
  add_foreign_key "stu_status", "stu_master", column: "stid", primary_key: "stid", name: "stu_status_stu_master_fk"
  add_foreign_key "stu_totmarks", "stu_master", column: "stid", primary_key: "stid", name: "stu_totmarks_stu_master_fk"
  add_foreign_key "stu_totmarks1", "stu_master", column: "stid", primary_key: "stid", name: "stu_totmarks1_stu_master_fk"
end
