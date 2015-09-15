class CreateGroupMasters < ActiveRecord::Migration
  def change
    create_table :group_masters do |t|
      t.references :department_master, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
