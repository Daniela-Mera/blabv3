class TipoController < ApplicationController
  def index
        @tipos = Tipo.all

  end
end
