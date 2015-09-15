class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.references :group_master, index: true, foreign_key: true
      t.string :mail_address
      t.string :name

      t.timestamps null: false
    end
  end
end
