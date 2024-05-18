class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
