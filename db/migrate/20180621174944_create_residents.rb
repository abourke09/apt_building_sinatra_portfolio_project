class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string "username"
      t.string "password_digest"
      t.string "name"
      t.integer "apartment_number"
      t.integer "building_id"
      t.timestamps null: false
    end
  end
end
