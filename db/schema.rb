# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_150_220_224_454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'pins', id: :serial, force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.string 'image_file_name'
    t.integer 'image_file_size'
    t.string 'image_content_type'
    t.datetime 'image_updated_at'
    t.index ['user_id'], name: 'index_pins_on_user_id'
  end

  create_table 'users', id: :serial, force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.inet 'current_sign_in_ip'
    t.inet 'last_sign_in_ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'votes', id: :serial, force: :cascade do |t|
    t.string 'votable_type'
    t.integer 'votable_id'
    t.string 'voter_type'
    t.integer 'voter_id'
    t.boolean 'vote_flag'
    t.string 'vote_scope'
    t.integer 'vote_weight'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.index %w[votable_id votable_type vote_scope],
            name: 'index_votes_on_votable_id_and_votable_type_and_vote_scope'
    t.index %w[voter_id voter_type vote_scope], name: 'index_votes_on_voter_id_and_voter_type_and_vote_scope'
  end
end
