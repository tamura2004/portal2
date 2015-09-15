class CreateApServerMasters < ActiveRecord::Migration
  def change
    create_table :ap_server_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
