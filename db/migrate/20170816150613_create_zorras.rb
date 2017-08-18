class CreateZorras < ActiveRecord::Migration[5.1]
  def change
    create_table :zorras do |t|
      t.string :nombre
      t.string :tabledance
      t.integer :edad
      t.float :precio
      t.float :horas

      t.timestamps
    end
  end
end
