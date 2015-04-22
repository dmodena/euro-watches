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

ActiveRecord::Schema.define(version: 20_150_420_173_636) do
  create_table 'abouts', force: :cascade do |t|
    t.string 'name'
    t.text 'content'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_id',   null: false
    t.string 'resource_type', null: false
    t.integer 'author_id'
    t.string 'author_type'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'active_admin_comments', %w(author_type author_id), name: 'index_active_admin_comments_on_author_type_and_author_id'
  add_index 'active_admin_comments', ['namespace'], name: 'index_active_admin_comments_on_namespace'
  add_index 'active_admin_comments', %w(resource_type resource_id), name: 'index_active_admin_comments_on_resource_type_and_resource_id'

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email',                  default: '', null: false
    t.string 'encrypted_password',     default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'admin_users', ['email'], name: 'index_admin_users_on_email', unique: true
  add_index 'admin_users', ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true

  create_table 'brands', force: :cascade do |t|
    t.string 'name'
    t.string 'country'
    t.text 'description'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'complications', force: :cascade do |t|
    t.text 'description'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'complications_products', id: false, force: :cascade do |t|
    t.integer 'complication_id'
    t.integer 'product_id'
  end

  add_index 'complications_products', ['complication_id'], name: 'index_complications_products_on_complication_id'
  add_index 'complications_products', ['product_id'], name: 'index_complications_products_on_product_id'

  create_table 'contacts', force: :cascade do |t|
    t.string 'name'
    t.string 'address'
    t.string 'city'
    t.string 'province'
    t.string 'postal_code'
    t.string 'country'
    t.string 'telephone'
    t.string 'email'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'products', force: :cascade do |t|
    t.integer 'brand_id'
    t.string 'model'
    t.text 'description'
    t.string 'movement'
    t.decimal 'case_diameter'
    t.string 'case_material'
    t.string 'strap_material'
    t.boolean 'swiss_made'
    t.boolean 'cosc'
    t.boolean 'geneva_hallmark'
    t.decimal 'price'
    t.integer 'stock_quantity'
    t.datetime 'created_at',      null: false
    t.datetime 'updated_at',      null: false
    t.string 'image'
  end

  add_index 'products', ['brand_id'], name: 'index_products_on_brand_id'

  create_table 'users', force: :cascade do |t|
    t.string 'email',                  default: '', null: false
    t.string 'encrypted_password',     default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
  add_index 'users', ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
end
