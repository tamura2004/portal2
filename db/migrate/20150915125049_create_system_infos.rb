class CreateSystemInfos < ActiveRecord::Migration
  def change
    create_table :system_infos do |t|
      t.string :management_number
      t.string :name
      t.references :os_name_master, index: true, foreign_key: true
      t.references :java_name_master, index: true, foreign_key: true
      t.references :java_version_master, index: true, foreign_key: true
      t.references :ap_server_master, index: true, foreign_key: true
      t.integer :ap_server_number

      t.timestamps null: false
    end
  end
end
