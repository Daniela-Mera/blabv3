class CreateJoinTableUsersTrabajos < ActiveRecord::Migration[7.0]
  def change
    #generado automaticamente al crear el metodo, da un error al migrar:
    #create_join_table :users, :trabajos do |t|
    #  t.references :user, null: false, foreign_key: true
    #  t.references :trabajo, null: false, foreign_key: true

    #se reemplaza por  
    create_join_table :users, :trabajos, column_options: { null: false, foreign_key: true} do |t|
      t.index [:user_id, :trabajo_id]
      t.index [:trabajo_id, :user_id]

    end
  end
end
