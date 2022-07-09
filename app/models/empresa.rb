class Empresa < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # relacion 1-n con empresa-trabajo
    has_many :trabajos, class_name:"Trabajo", foreign_key:"empresa_id"


end
