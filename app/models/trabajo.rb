class Trabajo < ApplicationRecord
  belongs_to :tipo
  belongs_to :regionch

  #generado automaticamente
  #belongs_to :empresa

  # relacion 1-n empresa-trabajo
  belongs_to :empresa, class_name:"Empresa", foreign_key:"empresa_id"

  #para que no se pueda acceder a trabajos sin antes iniciar sesion
  #before_action:authenticate_empresa!


end
