class CreateTipos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipos do |t|
      t.string :name

      t.timestamps
    end
  end
end
