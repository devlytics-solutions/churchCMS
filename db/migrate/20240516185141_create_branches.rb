class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.references :church, null: false, foreign_key: true

      t.timestamps
    end
  end
end
