class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to articles_path
    end
  end
end
