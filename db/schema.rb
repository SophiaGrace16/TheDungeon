# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_03_200730) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "class"
    t.integer "level"
    t.string "background"
    t.string "race"
    t.string "alignment"
    t.integer "exp"
    t.integer "str"
    t.integer "con"
    t.integer "dex"
    t.integer "inte"
    t.integer "wis"
    t.integer "chari"
    t.integer "str_mod"
    t.integer "dex_mod"
    t.integer "con_mod"
    t.integer "inte_mod"
    t.integer "wis_mod"
    t.integer "chari_mod"
    t.integer "passive_wis"
    t.text "proficiencies"
    t.text "lang"
    t.integer "armor_class"
    t.integer "initiative"
    t.integer "speed"
    t.integer "hit_pt_max"
    t.string "hit_dice"
    t.string "spellname"
    t.text "spell_desc"
    t.text "arm_desc"
    t.integer "cp"
    t.integer "sp"
    t.integer "ep"
    t.integer "gp"
    t.integer "pp"
    t.text "personality_traits"
    t.text "ideas"
    t.text "bonds"
    t.text "flaws"
    t.text "feat_traits"
    t.text "race_info"
    t.text "class_info"
    t.text "bg_story"
    t.text "lvl_gain"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dms", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.boolean "active"
    t.integer "dm_id"
    t.integer "player_id"
    t.string "camp_name"
    t.text "loot_found"
    t.integer "exp_gained"
    t.date "date_started"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "setting"
    t.string "camp_type"
    t.string "final_boss"
    t.string "item_reward"
    t.integer "coin_reward"
    t.integer "exp_reward"
    t.string "story_link"
    t.text "summary"
    t.string "difficulty"
    t.integer "dm_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
