class GeneroController < ApplicationController
  def index
        @generos = Genero.all

  end
end
