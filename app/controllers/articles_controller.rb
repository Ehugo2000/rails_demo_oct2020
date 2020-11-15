class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
   @article = Article.create(article_params)
    if @article.persisted?
      redirect_to @article, notice: 'Article was successfully created.'
    else
      redirect_to new_article_path, notice: "Title can't be blank"
    end
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
  
end
