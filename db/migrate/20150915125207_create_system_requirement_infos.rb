class CreateSystemRequirementInfos < ActiveRecord::Migration
  def change
    create_table :system_requirement_infos do |t|
      t.references :os_name_master, index: true, foreign_key: true
      t.references :java_name_master, index: true, foreign_key: true
      t.references :java_version_master, index: true, foreign_key: true
      t.references :ap_server_master, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
