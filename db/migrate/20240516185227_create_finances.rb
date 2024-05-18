class CreateFinances < ActiveRecord::Migration[7.0]
  def change
    create_table :finances do |t|
      t.date :date
      t.decimal :amount
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
