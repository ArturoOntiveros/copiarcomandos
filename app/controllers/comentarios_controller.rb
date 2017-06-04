class ComentariosController < InheritedResources::Base

  private

    def comentario_params
      params.require(:comentario).permit(:Article_id, :body)
    end
end

