class CreateOsNameMasters < ActiveRecord::Migration
  def change
    create_table :os_name_masters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
