class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.string  "message"
      t.integer "resident_id"
      t.timestamps null: false
    end
  end
end
