class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user_info, index: true, foreign_key: true
      t.references :project_info, index: true, foreign_key: true
      t.string :start_date
      t.string :end_date

      t.timestamps null: false
    end
  end
end
