class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Task.new(params[:article])
    @article.save
    redirect_to task_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Task.find(params[:id])
    @article.update(task_params)
    redirect_to task_path(@article)
  end

  def destroy
    @article = Task.find(params[:id])
    @article.destroy
    redirect_to task_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
