class CreateJavaVersionMasters < ActiveRecord::Migration
  def change
    create_table :java_version_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
