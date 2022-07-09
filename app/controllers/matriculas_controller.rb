class MatriculasController < ApplicationController
  def index
      @usuarios = User.all
      @trabajos = Trabajo.all
      @us2 = User.find(current_user.id).trabajos

  end

  #para asociar una asignatura a un usuario
    def new 
        #necesito recibir los parametros del formulario
        @u_id = params[:user_id]
        @a_id = params[:asig]
        #tengo que encontrar, buscar, el usuario y la asignatura
        @us = User.find(@u_id)
        @as = Trabajo.find(@a_id)
        #debo comprobar si la asignatura ya esra matriculada
        #me devuelve un objeto
        @busqueda = User.find(@u_id).trabajos.find_by_id(@a_id)
        if @busqueda == nil 
            #si no esta matriculada, puedo hacer las relaciones
            @us.trabajos << @as
            respond_to do |format|
                format.html { redirect_to "/matriculas/new", notice: "Éxito! Has postulado!" }
            end
        else
            #si esta matriculada, muestro texto de respuesta
            respond_to do |format|
                format.html { redirect_to "/matriculas/new", notice: "Error: Ya habias postulado a este trabajo!" }
            end
        end
    end

  #accion de eliminar matricula de una asignatura del usuario activo
    def eliminar
      #User.find(1).trabajos.delete(Asignatura.find(1))
      User.find(params[:us_id]).trabajos.delete(Trabajo.find_by(nombre: params[:nom_as]))
      respond_to do |format|
          format.html { redirect_to "/matriculas/form", notice:"Postulacion eliminada correctamente" }
          
      end
  end


end
