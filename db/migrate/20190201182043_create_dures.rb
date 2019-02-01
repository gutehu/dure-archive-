class CreateDures < ActiveRecord::Migration[5.2]
  def change
    create_table :dures do |t|
      t.string :name
      t.string :activity
      t.string :address
      t.integer :effective
      t.text :other

      t.timestamps
    end
  end
end
