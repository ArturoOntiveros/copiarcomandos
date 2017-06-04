class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:cretor, :title, :body)
    end
end

