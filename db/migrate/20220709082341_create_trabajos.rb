class CreateTrabajos < ActiveRecord::Migration[7.0]
  def change
    create_table :trabajos do |t|
      t.string :nombre
      t.string :cargo
      t.string :descripcion
      t.string :vacantes
      t.integer :sueldo
      t.date :fecha_inicio
      t.references :tipo, null: false, foreign_key: true
      t.references :regionch, null: false, foreign_key: true
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
