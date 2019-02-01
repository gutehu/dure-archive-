class CreateWorkUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :work_units do |t|
      t.string :name
      t.references :duer, foreign_key: true

      t.timestamps
    end
  end
end
