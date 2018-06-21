class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string "username"
      t.string "password_digest"
      t.integer "apt_number"
      t.integer "apartment_building_id"
      t.timestamps null: false
    end
  end
end
