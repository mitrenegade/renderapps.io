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

ActiveRecord::Schema.define(version: 20170421173651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estimates", force: :cascade do |t|
    t.string   "email"
    t.string   "phone"
    t.boolean  "work_with_us"
    t.boolean  "reg_email"
    t.boolean  "reg_social"
    t.boolean  "reg_none"
    t.boolean  "app_web"
    t.boolean  "app_mobile"
    t.boolean  "app_vr"
    t.boolean  "feat_onboarding"
    t.boolean  "feat_admin"
    t.boolean  "feat_autoemail"
    t.boolean  "feat_rating"
    t.boolean  "feat_social"
    t.boolean  "feat_gamify"
    t.boolean  "feat_photos"
    t.boolean  "feat_payment"
    t.boolean  "feat_messaging"
    t.boolean  "feat_video"
    t.boolean  "feat_gps"
    t.boolean  "feat_places"
    t.boolean  "feat_schedule"
    t.boolean  "feat_notify"
    t.boolean  "feat_health"
    t.boolean  "feat_dashboard"
    t.boolean  "feat_ads"
    t.boolean  "feat_feedback"
    t.boolean  "feat_search"
    t.boolean  "feat_audio"
    t.boolean  "feat_tasklist"
    t.boolean  "feat_activityfeed"
    t.boolean  "feat_sms"
    t.boolean  "feat_ordering"
    t.boolean  "api"
    t.boolean  "api_unsure"
    t.boolean  "extra_website"
    t.boolean  "extra_appicon"
    t.boolean  "extra_logo"
    t.integer  "timeline"
    t.string   "public_token"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "topic"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
