class CreateProjectInfos < ActiveRecord::Migration
  def change
    create_table :project_infos do |t|
      t.references :system_info, index: true, foreign_key: true
      t.string :management_number
      t.string :name

      t.timestamps null: false
    end
  end
end
