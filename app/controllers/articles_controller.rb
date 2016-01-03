class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
    @article = Article.new
  end
  
  
  def create
    #render plain: params[:article].inspect   para ver que trae el parametro
    @article = Article.new(article_params)
    @article.save
    
    redirect_to articles_show(@article)
  end

  
  private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
