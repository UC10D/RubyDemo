class ArticlesController < ApplicationController
  def create

    data = {
        title: params[:title],
        text: params[:text]
    }

    @article = Article.new(data)

    @article.save

    return 200
  end

#   private

#   def article_params
#     params.require(:article).permit(:title, :text)
#   end
end
