class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
     @article = Article.new(article_params)
     @user = User.find(params[:article][:user_id])
     if @article.save
       @user.articles << @article
      flash[:notice] = "#{@article.name} has been added to Hacker News!!"
      redirect_to articles_path
     else
      render 'new'
     end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    if @article.destroy
      flash[:notice] = "#{@article.name} deleted"
      redirect_to articles_path
    else
      render ('articles')
    end
  end

private
  def article_params
    params.require(:article).permit(:name, :link, :user_id)
  end
end

